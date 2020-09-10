Main repository for the VIC Project

# Virtual Environment Setup
So we're going to be developing this project with the assistance of python's `venv` module to keep track of python dependencies.
Initialising it requires Python 3.8 and pip to be installed to your command line. Run the following commands:

>python --version

>pip --version

They should return something starting with Python 3.8 and pip 19 or 20. Once you know that both tools are functional, run the
following commands to build a virtual environment.

>python -m venv venv

>source venv/bin/activate

You will now be running a virtual environment where you cannot access any of your previously installed Python packages.
This is useful because it gives everyone the same blank slate to work from. In order to install all the necessary packages,
run the following command from the same directory that pip_requirements.txt is in:

>pip install -r pip_requirements.txt

There you go! Your Virtual Environment should be all set up. When you're done with it, just type `deactivate` and you'll be
back to normal functionality.

NOTE: Python virtual environments are rather ephemeral, so don't try to move them somewhere else or use them from the repository
expecting it to work with no issues. Make it in whatever directory you want to source it from.

