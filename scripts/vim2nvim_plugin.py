#!/usr/bin/python
import os
import sys
import subprocess


def vim2nvim_plugins_install(vim_bundles_dir, nvim_bundles_dir):
    os.chdir(nvim_bundles_dir)
    plugin_folders = os.listdir(vim_bundles_dir)

    for folder in plugin_folders:
        try:
            if '.git' not in os.listdir(vim_bundles_dir + folder):
                continue

            print folder
            with open(vim_bundles_dir + folder + '/.git/config') as fp:
                config_content = fp.readlines()

            git_url = config_content[6].split('=')[1].strip()
            print git_url

            # raise exception if return code is non-zero
            subprocess.check_call(['git', 'clone', git_url])

            print "******* SUCCESS *******\n"

        except:
            print "******* UNSUCCESSFUL *******\n"


if __name__ == '__main__':
    args = sys.argv[1:]
    if not len(args) == 2:
        print "USAGE:\n./vim2nvim_plugin path/to/vim/bundles path/to/nvim/bundles"

    else:
        try:
            path_exists = os.path.exists(args[0]) and os.path.exists(args[1])
            if not path_exists:
                raise
            vim2nvim_plugins_install(args[0], args[1])
        except:
            print "Incorrect path"
