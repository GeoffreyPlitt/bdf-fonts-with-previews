#!/bin/bash

# Activate virtual environment
source venv/bin/activate

# List of font files
FONT_FILES=(
    "4x6.bdf"
    "5x7.bdf"
    "6x9.bdf"
    "7x13.bdf"
    "8x13.bdf"
    "9x15.bdf"
    "10x20.bdf"
    "HaxorMedium-10.bdf"
    "HaxorNarrow-15.bdf"
    "scientifica-11.bdf"
    "spleen-5x8.bdf"
    "clR6x12.bdf"
    "creep.bdf"
    "knxt.bdf"
    "logisoso46.bdf"
    "peep-10x20.bdf"
    "PsevdoAzbukaMedium-12.bdf"
    "tom-thumb.bdf"
)

# Check if the python script exists
if [ ! -f "preview.py" ]; then
    echo "Error: preview.py not found!"
    exit 1
fi

# Make sure the script is executable
chmod +x preview.py

# Directory where the previews will be saved
OUTPUT_DIR="previews"
mkdir -p "$OUTPUT_DIR"

# Generate previews for each font
for font in "${FONT_FILES[@]}"; do
    echo "Generating preview for $font..."
    
    # Get full path to the font file (using current directory)
    FONT_PATH="$(pwd)/$font"
    
    # Output path
    OUTPUT_PATH="$OUTPUT_DIR/$font.png"
    
    # Generate the preview
    python ./preview.py "$FONT_PATH" "$OUTPUT_PATH"
    
    if [ $? -ne 0 ]; then
        echo "Error generating preview for $font"
    fi
done

echo "All previews generated in $OUTPUT_DIR"

# Deactivate virtual environment
deactivate