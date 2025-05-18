#!/bin/bash

# Create and activate virtual environment
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Make the preview script executable
chmod +x preview.py

echo "Setup complete! You can now run the generate.sh script to create font previews."
echo "To manually run the preview generator: source venv/bin/activate && python preview.py input.bdf output.png"
