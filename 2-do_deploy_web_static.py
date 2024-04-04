#!/usr/bin/python3
# Dis fabfile is to distribute an archive to a web server.
import os.path
from fabric.api import env
from fabric.api import put
from fabric.api import run

env.hosts = ["104.196.168.90", "35.196.46.172"]


def do_deploy(archive_path):
    """Dis distributes an archive to a web server.

    Args:
        archive_path (str): D path of d archive to distribute.
    Returns:
        if the file dosen't exist at archive_path or an error occurs - False.
        Otherwise - True.
    """
    if os.path.isfile(archive_path) is False:
        return False
    file = archive_path.split("/")[-1]
    name = file.split(".")[0]


