;;; user-init-php-mode.el --- Configuration for php-mode

;;; Commentary:
;;

;;; Code:

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(add-hook 'php-mode-hook 'my-php-mode-hook)
(defun my-php-mode-hook ()
  "My PHP mode configuration."
  (defvar indent-tabs-mode nil)
  (defvar tab-width 4)
  (defvar c-basic-offset 4))

(provide 'user-init-php-mode)

;;; user-init-php-mode.el ends here
