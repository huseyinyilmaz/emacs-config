(add-hook 'after-init-hook
	  #'(lambda ()
	      (setq py-shell-name "ipython")
	      (require 'python-mode)))
