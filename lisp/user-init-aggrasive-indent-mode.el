;;; user-init-aggrasive-indent-mode.el --- User initialization for aggrasive indent mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook
          #'(lambda ()
              (global-aggressive-indent-mode 1)
              (add-to-list 'aggressive-indent-excluded-modes 'html-mode)))

(provide 'user-init-aggrasive-indent-mode)

;;; user-init-aggrasive-indent-mode.el ends here
