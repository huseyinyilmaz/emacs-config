;;; user-init-elisp.el --- Setup emacs-lisp-mode

;;; Commentary:
;; 

;;; Code:

 ;; for elisp files
(add-hook 'emacs-lisp-mode-hook #'turn-on-eldoc-mode)

;; for scratch buffer
(add-hook 'lisp-interaction-mode-hook #'turn-on-eldoc-mode)

(message "config emacs lisp mode")
(provide 'user-init-elisp)

;;; user-init-elisp.el ends here
