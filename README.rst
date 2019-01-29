============================
Project Status - Blog Format
============================

.. image:: https://travis-ci.com/dlux/blog_project.svg?branch=master
    :target: https://travis-ci.com/dlux/blog_project

Current repo is a web site that can be used as a blog template or to track
one or more projects status in a blog format.

To use:

* Install jekyll
* Install apache server:

.. code-block :: bash

    sudo su
    git clone https://github.com/dlux/InstallScripts
    cd InstallScripts
    ./install_jekyll --apache

* Generate static site with jekyll

.. code-block :: bash

    sudo su
    cd dashboard
    jekyll build -d /var/www/html/dashboard

* Goto: http://localhost/dashboard

