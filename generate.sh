#!/bin/bash

# Activate virtual environment
source venv/bin/activate

# Check if the python script exists
if [ ! -f "generate_previews.py" ]; then
    echo "Error: generate_previews.py not found!"
    exit 1
fi

# Make sure the script is executable
chmod +x generate_previews.py

# Run the script to generate all previews
python ./generate_previews.py

# Deactivate virtual environment
deactivate