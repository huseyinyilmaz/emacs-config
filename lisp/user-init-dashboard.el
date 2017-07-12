;;; user-init-dashboard.el --- Configuration for emacs dashboard.

;;; Commentary:
;;

;;; Code:

(defvar dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        ;; (agenda . 5))
                        ))
(add-hook 'after-init-hook
          'dashboard-setup-startup-hook)
(message "config dashboard")
(provide 'user-init-dashboard)

(provide 'user-init-dashboard)

;;; user-init-dashboard.el ends here
