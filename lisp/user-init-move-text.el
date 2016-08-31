;;; user-init-move-text.el --- Configuration for move-text package

;;; Commentary:
;;


;;; Code:
(add-hook 'after-init-hook (lambda ()
                             (global-set-key (kbd "M-p") 'move-text-up)
                             (global-set-key (kbd "M-n") 'move-text-down)))

(provide 'user-init-move-text)

;;; user-init-move-text.el ends here
