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

Installation
============

Just clone repository as ~/.emacs.d. When you start your emacs, emacs will download dependencies

::

   $ git clone git://github.com/huseyinyilmaz/emacs-package-config.git .emacs.d
   $ emacs


Customization
=============

You can add any customization you need to user-init-local.el file
This file will run after the rest of the system is initialized.
