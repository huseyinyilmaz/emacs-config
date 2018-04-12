;;; user-init-theme.el --- Configure color theme

;;; Commentary:
;;

;;; Code:

(defun user-init-configure-zenburn ()
  "Configure zenburn theme."
  (load-theme 'zenburn t))

(defun user-init-configure-spacegray ()
  "Configure zenburn theme."
  (load-theme 'spacegray t))

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

(defun user-init-configure-monokai ()
  "Configure monokai theme."
  (load-theme 'monokai t)
  )

(defun user-init-configure-atom-dark ()
  "Configure atom dark theme."
  (load-theme 'atom-dark t)
  )

(defun user-init-configure-gruvbox ()
  "Configure gruvbox theme."
  (load-theme 'gruvbox t)
)

(defun user-init-configure-dracula ()
  "Configure atom dark theme."
  (load-theme 'dracula t)
  )

(defun user-init-configure-google-dark ()
  "Configure atom dark theme."
  (load-theme 'base16-google-dark t)
  )

;;In order to change theme, change initilialization function here.
(add-hook 'after-init-hook 'user-init-configure-dracula)
;; (add-hook 'after-init-hook 'user-init-configure-monokai)
;; (add-hook 'after-init-hook#'user-init-configure-solarized)
;; (add-hook 'after-init-hook 'user-init-configure-atom-dark)
;; (add-hook 'after-init-hook 'user-init-configure-gruvbox)
;; (add-hook 'after-init-hook 'user-init-configure-zenburn)
;; (add-hook 'after-init-hook 'user-init-configure-google-dark)

(message "config theme")
(provide 'user-init-theme)

;;; user-init-theme.el ends here
