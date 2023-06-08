"""The main application package."""
import os
from subprocess import CalledProcessError, check_output

GIT = '/usr/intel/bin/git'
ROOT = os.path.dirname(os.path.dirname(__file__))

try:
    __version__ = check_output(
        [GIT, '--git-dir', os.path.join(ROOT, '.git'), 'describe', '--tags'],
    ).decode().strip()[1:]
except CalledProcessError:  # pragma: no cover
    __version__ = 'unknown'
