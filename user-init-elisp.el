;;; user-init-elisp.el --- Setup emacs-lisp-mode

;;; Commentary:
;; 

;;; Code:

 ;; for elisp files
(add-hook 'emacs-lisp-mode #'turn-on-eldoc-mode)
;; for scratch buffer
(add-hook 'lisp-interaction-mode #'turn-on-eldoc-mode)
;; scratch is already started
(add-hook 'after-init-hook
	  #'(lambda ()
	      (with-current-buffer (get-buffer "*scratch*")
		(turn-on-eldoc-mode))))

(message "config emacs lisp mode")
(provide 'user-init-elisp)

;;; user-init-elisp.el ends here
