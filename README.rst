Emacs configuration
===================
This is my emacs configuration setup that is based on package.el.

Requirements
============
This emacs configuration is for emacs 24 or higher.

Keyboard remap for mac os
=========================
I use specific keyboard layout for map. In order to set it up.

First run this to set all arrow keys to control.

Key values are coming from here: https://developer.apple.com/library/archive/technotes/tn2450/_index.html#//apple_ref/doc/uid/DTS40017618-CH1-KEY_TABLE_USAGES

::

   hidutil property --set '{"UserKeyMapping":
    [{"HIDKeyboardModifierMappingSrc":0x70000004F, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x700000050, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x700000051, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x700000052, "HIDKeyboardModifierMappingDst":0x7000000E4},

     {"HIDKeyboardModifierMappingSrc":0x70000005A, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x70000005C, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x70000005E, "HIDKeyboardModifierMappingDst":0x7000000E4},
     {"HIDKeyboardModifierMappingSrc":0x700000060, "HIDKeyboardModifierMappingDst":0x7000000E4},
    ]
   }'

After that go to System Preferences > Keyboard > Modifier Keys and set fn key to control.

If you need to reset arrow keys do:
::

   hidutil property --set '{"UserKeyMapping": []}'


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


Random
======
Install missing icons

::

   (all-the-icons-install-fonts)

Full screen

::

   (toggle-frame-fullscreen)
