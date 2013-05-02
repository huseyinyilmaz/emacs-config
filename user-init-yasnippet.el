(add-hook 'after-init-hook
	  #'(lambda ()
	      (yas-global-mode 1)
	      (add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")))

(message "config yasnippet")
(provide 'user-init-yasnippet)
;;; user-init-yasnippet.el ends here
