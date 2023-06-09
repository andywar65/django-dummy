# change root and directory name
cd D:/venvs/
mkdir django-dummy
cd django-dummy
# start and activate virtual environment
py -3.10 -m virtualenv env
env/Scripts/activate
# make some other directories
mkdir static
mkdir media
# maybe I should put this one in requirements
python -m pip install pip-tools
# clone the repository, then jump in the directory
git clone https://github.com/andywar65/django-dummy
cd django-dummy
# install requirements
python -m pip install -r requirements.txt
# I use pre-commit systemwide, so I just install it in the local repository
pre-commit install
# Here we generate secret key and save it in .env file
python generate_env_file.py
# standard + custom commands
python manage.py migrate
python manage.py create_super_user
# this is a ps shortcut for runserver
.\run
