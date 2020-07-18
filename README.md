# PhotoRenamer
Obsolete and unmaintained until further use aries. However, it might serve as a template for a python/ruby command line tool.

## What is this?
This used to be a little ruby thor application which should help to rename pictures taken from Apple's iPhoto or Photo library. I've rewritten the tool in python3 and intend to only work on the python version. 

The pictures from these libraries are stored in a hidden folder named "masters". This folder contains the original unmodified pictures. I intend to copy the files from this folder so that their parent directory is preserved (e.g. the event or album name), but I also want to add a timestamp of the pictures creation (taken from the exif information) and maybe an additional definable text field (e.g. for adding the location).

The current Mac OS Photos version in High Sierra is able to export the pictures including their event names, if present. These exported files can also be used for renaming and do not require working inside the library master folder.



## Prerequisites
You need to install python3 via brew with ``brew install python3``. Make also sure that you've installed [pipenv](https://robots.thoughtbot.com/how-to-manage-your-python-projects-with-pipenv) with ``pip3 install pipenv``.

## How to use
Change into the python subfolder and run ``pipenv install`` to install all requirements.

You can enter the environment with ``pipenv shell``. In this shell you can now run the script with ``python photorenamer.py``.

If you add the ``--help`` option to the script, it will explain the optional arguments.

## Known issues
* Folders with ampersands (&) make problems in the path detection - replace them with "and"
* Error message after first file was scanned and folder renamed, as the loop tries other images as well but doesn't find the path since the folder was renamed

## License
MIT License

Copyright (c) [2016-2020] [Markus Rudel]

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
