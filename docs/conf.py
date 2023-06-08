"""Configuration file for the Sphinx documentation builder."""

import os
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))
sys.path.insert(0, ROOT)

from python_boilerplate import __version__  # noqa isort:skip

project = 'Python Boilerplate'
copyright = '2020 Intel Corporation'

version = __version__
release = __version__

extensions = [
    'sphinx.ext.autodoc',
    'sphinxcontrib.napoleon'
]
autodoc_default_options = {
    'members': True,
    'inherited-members': True
}
autodoc_member_order = 'bysource'

source_suffix = '.rst'
# The master toctree document
master_doc = 'index'
# The name of the Pygments (syntax highlighting) style to use
pygments_style = 'default'

html_use_modindex = True
html_theme = 'sphinx_rtd_theme'
html_theme_options = {
    'collapse_navigation': False,
    'style_external_links': True
}
