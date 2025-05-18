#!/usr/bin/env python3
from setuptools import setup, find_packages

setup(
    name="bdf-font-previewer",
    version="0.1.0",
    description="Tool to generate previews for BDF bitmap fonts",
    author="",
    packages=find_packages(),
    install_requires=[
        "Pillow>=9.0.0",
        "argparse",
    ],
    entry_points={
        "console_scripts": [
            "bdf-preview=preview:main",
        ],
    },
    python_requires=">=3.6",
)
