#!/usr/bin/env python3
import os
import subprocess
from contextlib import contextmanager


@contextmanager
def brew_temp_file(file_name):
    subprocess.call(f'brew bundle dump --file={file_name}', shell=True)
    yield
    os.remove(file_name)


with brew_temp_file('.Brewfile'):
    with open('Brewfile') as fd:
        content = fd.readlines()

    with open('.Brewfile') as fd:
        content_generated = fd.readlines()

    missing = set(content_generated).difference(content)
    print("Missing from Brewfile:")
    print("".join(missing))
