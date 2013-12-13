;;; Code:
(defun user-init-exec-path-from-shell ()
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)
    (exec-path-from-shell-copy-env "PYTHONPATH")))

(add-hook 'after-init-hook #'user-init-exec-path-from-shell)

(message "config user-init-exec-path-from-shell-")
(provide 'user-init-exec-path-from-shell)
;;; user-init-paths.el ends here
