;;; user-init-js2-mode.el --- Configure js2-mode

;;; Commentary:
;; 


;;; Code:

(add-hook 'after-init-hook
	  #'(lambda ()
              (setq js2-basic-offset 2) ;; set tab t0
              (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
              (add-to-list 'interpreter-mode-alist '("node" . js2-mode))))


(provide 'user-init-js2-mode)
;;; user-init-js2-mode.el ends here
