(require 'package)

;; package resources
;; ("gnu" . "http://elpa.gnu.org/packages/")
;; ("marmalade" . "http://marmalade-repo.org/packages/")
;; ("melpa" . "http://melpa.milkbox.net/packages/")

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)



(when (not package-archive-contents)
  (package-refresh-contents))

;; install these packages if they are not there.
(defvar my-packages '(zenburn-theme
		      auto-complete))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))

(message "config packages")
