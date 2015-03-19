;;; Code:
(defun user-init-exec-path-from-shell ()
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)
    (exec-path-from-shell-copy-env "PYTHONPATH")
    (message (concat "Initialize python path PYTHONPATH=" (getenv "PYTHONPATH")))
    (exec-path-from-shell-copy-env "WORKON_HOME")
    (message (concat "Initialize python path WORKON_HOME=" (getenv "WORKON_HOME")))

))

(add-hook 'after-init-hook #'user-init-exec-path-from-shell)

(message "config user-init-exec-path-from-shell")
(provide 'user-init-exec-path-from-shell)
;;; user-init-paths.el ends here
