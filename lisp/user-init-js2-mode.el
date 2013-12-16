;;; user-init-js2-mode.el --- Configure js2-mode

;;; Commentary:
;; 


;;; Code:

(add-hook 'after-init-hook
	  #'(lambda ()
              (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
              (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
              (add-hook 'js2-mode-hook 'ac-js2-mode)))


(provide 'user-init-js2-mode)
;;; user-init-js2-mode.el ends here
