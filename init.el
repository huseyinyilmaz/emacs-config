;;; init.el --- Main emacs initialization file.


;;; Commentary:
;;
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'user-init)
;;; Code:

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-color-mode-line-error-face ((t (:inherit flycheck-fringe-error))))
 '(flycheck-color-mode-line-info-face ((t (:inherit flycheck-fringe-info))))
 '(flycheck-color-mode-line-warning-face ((t (:inherit flycheck-fringe-warning)))))
