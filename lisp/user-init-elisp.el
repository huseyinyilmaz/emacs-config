;;; user-init-elisp.el --- Setup emacs-lisp-mode

;;; Commentary:
;; 

;;; Code:

(add-hook 'emacs-mode-hook #'rainbow-delimeters)
 ;; for elisp files
(add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

;; for scratch buffer
(add-hook 'lisp-interaction-mode-hook #'turn-on-eldoc-mode)

;; make M-. go to source
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))

(message "config emacs lisp mode")
(provide 'user-init-elisp)

;;; user-init-elisp.el ends here
