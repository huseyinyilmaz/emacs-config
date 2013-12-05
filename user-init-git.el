;;; user-init-git.el --- Git configuration file.


;;; Commentary:
;; 

;;; Code:

(add-hook 'after-init-hook #'user-init-configure-git)

(defun user-init-configure-git()
  ;; (setq git-gutter-fr:side 'right-fringe)
  (global-git-gutter-mode))

(provide 'user-init-git)

;;; user-init-git.el ends here
