;;; user-init-theme.el --- Configure color theme

;;; Commentary:
;; 

;;; Code:

(defun user-init-configure-zenburn ()
  "Configure zenburn theme."
  (load-theme 'zenburn t))

(defun user-init-configure-solarized ()
  "Configure solarized theme."
  ;; Add solarized as safe theme, so it wont give an error
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
  (load-theme 'solarized-dark))

;;In order to change theme, change initilialization function here.
(add-hook 'after-init-hook#'user-init-configure-solarized)

(message "config theme")
(provide 'user-init-theme)

;;; user-init-theme.el ends here
