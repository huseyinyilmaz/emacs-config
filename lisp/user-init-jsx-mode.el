;;; user-init-jsx-mode.el --- Configuration for jsx-mode

;;; Commentary:
;; 
(add-hook 'after-init-hook
	  #'(lambda ()
              (add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
              (setq jsx-indent-level 2)
              ))

(provide 'user-init-jsx-mode)

;;; user-init-jsx-mode.el ends here
