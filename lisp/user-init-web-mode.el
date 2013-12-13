(add-hook 'after-init-hook
	  #'(lambda ()
	      (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
	      (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

	      (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

	      (defun web-mode-hook ()
		"Hooks for Web mode."
		(setq web-mode-markup-indent-offset 2)
		(setq web-mode-css-indent-offset 2)
		(setq web-mode-code-indent-offset 2))
	      
	      (add-hook 'web-mode-hook  'web-mode-hook)))

(message "config web-mode")
(provide 'user-init-web-mode)
;;; user-init-web-mode.el ends here
