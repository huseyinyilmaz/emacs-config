;;; user-init-direnv.el --- Configuration for direnv-mode

;;; Commentary:
;;


(setq-default direnv-non-file-modes nil)
(add-to-list 'direnv-non-file-modes 'python-mode)

(add-hook 'after-init-hook #'direnv-mode)

(provide 'user-init-direnv)

;;; user-init-direnv.el ends here
