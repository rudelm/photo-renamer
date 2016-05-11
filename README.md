# What is this?
This is a little ruby thor application which should help to rename pictures taken from Apple's iPhoto or Photo library. The pictures from this libraries are stored in a hidden folder named "masters". This folder contains the original unmodified pictures. I intend to copy the files from this folder so that their parent directory is preserved (e.g. the event or album name), but I also want to add a timestamp of the pictures creation (taken from the exif information) and maybe an additional definable text field (e.g. for adding the location).

# Prerequisites
You need to install the libexif library via brew with ``brew install libexif``

# License
MIT License

Copyright (c) [2016] [Markus Rudel]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.