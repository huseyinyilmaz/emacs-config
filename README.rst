Emacs configuration
===================
This is my emacs configuration setup that is based on package.el.

Requirements
============
This emacs configuration is for emacs 24 or higher.

optional python requirements
----------------------------
Install python requirements from requirements.pip file.
::

   $ sudo pip install -r requirements.pip

optional js requirements
------------------------
Install jshint and tern to get javascript style warnings.
Also install jsonlint to get json file style warning.
::

   $ npm install -g jshint
   $ npm install -g tern
   $ npm install -g jsonlint


optional erlang requirements
----------------------------
This configuration uses erlang-mode that comes with erlang distribution. So if you are going to
do erlang development you might need to change erlang-root-dir variable.
(it is set in user-init-config.el file)

optional rust requirement
-------------------------

Install racer to get company autocomplete, goto definition and type hints.
::

   https://github.com/racer-rust/racer



Installation
============

Just clone repository as ~/.emacs.d. When you start your emacs, emacs will download dependencies

::

   $ git clone git@github.com:huseyinyilmaz/emacs-config.git .emacs.d
   $ emacs


Customization
=============

You can add any customization you need to user-init-local.el file
This file will run after the rest of the system is initialized.
