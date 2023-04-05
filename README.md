# django-dummy
Install a Django 4.2 instance with a Powershell script
## Installation
If you are on Windows like me, copy the `install_django_dummy.ps1` to your computer, modify first three lines to your directory of choice and run the routine. I have `pre-commit` systemwide, if you are not interested delete the line. You can easily convert the file to your favourite command shell.
The routine sets a python virtual environment (3.10), downloads the libraries, clones the repository, sets the environment, migrates
the database tables, creates a superuser and runs the server. Enjoy!
## Next steps
The Django installation is (almost) barebone, I use it to develop or test my apps in isolation. Once installed I normally delete the `.git` folder, so I don't bother about commiting project changes. Superuser name and password are in `/utils/management/commands/create_super_user.py`, you can change it and rerun the command.
