# BDF Fonts with Previews

These are BDF fonts, a simple bitmap font-format that can be created
by many font tools. Given that these are bitmap fonts, they will look good on
very low resolution screens such as the LED displays.

Fonts in this directory (except tom-thumb.bdf) are public domain (see the [README](./README)) and
help you to get started with the font support in the API or the `text-util`
from the utils/ directory.

Tom-Thumb.bdf is included in this directory under [MIT license](http://vt100.tarunz.org/LICENSE). Tom-thumb.bdf was created by [@robey](http://twitter.com/robey) and originally published at https://robey.lag.net/2010/01/23/tiny-monospace-font.html

## Installation

This repository includes a Python script to generate previews of the BDF fonts. To set up the environment:

1. Clone this repository:
   ```bash
   git clone https://github.com/username/bdf-fonts-with-previews.git
   cd bdf-fonts-with-previews
   ```

2. Run the installation script to create a virtual environment and install dependencies:
   ```bash
   ./install.sh
   ```

## Usage

### Generate a single font preview

```bash
# Activate the virtual environment
source venv/bin/activate

# Generate preview for a single font
python preview.py /path/to/font.bdf output.png
```

### Generate previews for all included fonts

```bash
# The generate.sh script will create previews for all included fonts
./generate.sh
```

The previews will be saved in the `previews/` directory.

## Dependencies

- Python 3.6+
- Pillow (Python Imaging Library)
- argparse

These dependencies will be automatically installed when you run the `install.sh` script.
