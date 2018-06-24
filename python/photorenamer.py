#!/usr/bin/python

import sys, getopt, os
import pathlib
import time
import argparse

from PIL import Image
from PIL.ExifTags import TAGS


def main(argv):
    inputfolder = ''
    global dryrun

    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--dryrun',
                        action="store_true",
                        help='executes a dry run without renaming')
    parser.add_argument('-i', '--infolder',
                        help='specifies the input folder under which images should be searched')
    args = parser.parse_args()
    
    inputfolder = args.infolder
    dryrun = args.dryrun

    with os.scandir(inputfolder) as it:
        for entry in it:
            if (entry.is_dir()):
                scan_folder_for_image(entry)
            else:
                use_file_for_renaming(entry)


def scan_folder_for_image(folder):
    with os.scandir(folder) as it:
        for entry in it:
            if (entry.is_file()):
                use_file_for_renaming(entry)
                break

def use_file_for_renaming(filename):
    if _is_image(filename.path) and filename.is_file():
        try:
            image_date = _get_image_date(filename.path)
            print("File: " + filename.name + " was created " + time.strftime('%Y-%m-%dT%H:%M:%SZ', image_date))
            _rename_folder(filename.path, image_date)
        except TypeError:
            print("Couldn't read exif information")

def _rename_folder(filename, date):
    current_folder_path = os.path.dirname(filename)
    current_folder_name = os.path.basename(current_folder_path)
    current_folder_parent = os.path.abspath(os.path.join(current_folder_path, os.pardir))

    date_prefix = time.strftime("%Y-%m-%d - ", date)
    new_folder_name = date_prefix+current_folder_name
    new_folder_path = current_folder_parent + '/' + new_folder_name
    if (dryrun):
        print('<<<< dryrun >>>>, changing nothing')
        print('Tool could change folder ' + current_folder_path + ' to ' + new_folder_path)
    else:
        print('renaming folder ' + current_folder_path + ' to ' + new_folder_path)
        os.rename(current_folder_path, new_folder_path)

def _is_image(filename):
    image_suffixes = ['.jpg', '.dng', '.cr2', '.nef']
    suffix = pathlib.Path(filename).suffix
    if suffix in image_suffixes:
        print('Found supported image type in ' + filename)
        return True
    else:
        return False

def _get_image_date(filename):
    image = Image.open(filename)
    # the original creation date is in tag 36867
    # https://stackoverflow.com/a/23064792/831825
    creation_date_str = image._getexif()[36867]
    creation_date = time.strptime(creation_date_str,"%Y:%m:%d %H:%M:%S")
    return creation_date
    


if __name__ == "__main__":
   main(sys.argv[1:])

