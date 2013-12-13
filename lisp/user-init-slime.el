;;; Code:
(add-hook 'after-init-hook
	  #'(lambda ()
	      ;; enable slime with slime helper
	      (if (file-exists-p slime-helper-path)
		  (progn
		    (load slime-helper-path)
		    ;; Replace "sbcl" with the path to your implementation
		    ;; This is set in user-init-config.el
		    (setq inferior-lisp-program inferior-lisp-path)
		    ;; connect slime automatically
		    ;; when slime-mode is opened
		    (defun cliki:start-slime ()
		      (unless (slime-connected-p)
			(save-excursion (slime))))
		    ;; add full linking set
		    (add-hook 'slime-mode-hook 'cliki:start-slime))
		(message "slime-helper did not installed"))))


(message "config slime")
(provide 'user-init-slime)
;;; user-init-slime.el ends here
