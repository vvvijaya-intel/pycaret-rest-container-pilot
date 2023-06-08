from setuptools import find_packages, setup

setup(
    name='python-boilerplate',
    verison='0.0.1',
    packages=find_packages(exclude=['docs', 'tests']),
    scripts=['bin/example_script'],

    author='someone',
    author_email='someone@intel.com',
    description='Python boilerplate',
    url='https://gitlab.devtools.intel.com/syssim/python-boilerplate',

    python_requires='>=3',
)
