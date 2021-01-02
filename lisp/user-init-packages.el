;;; user-init-packages.el --- Configure packages

;;; Commentary:
;;

(require 'package)
(require 'user-init-config)

;;; Code:

;; package resources

;; ("gnu" . "http://elpa.gnu.org/packages/")
;; ("marmalade" . "http://marmalade-repo.org/packages/")
;; ("melpa" . "http://melpa.milkbox.net/packages/")

;; (setq package-archives '())

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; (add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (add-to-list 'package-archives
;;              '("org" . "http://orgmode.org/elpa/") t)

(when (not package-archive-contents)
  (package-refresh-contents))

;; install packages that is stored in user-packages variable
(dolist (p user-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))


(message "config packages")
(provide 'user-init-packages)
;;; user-init-packages.el ends here
