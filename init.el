;;; init.el --- Main emacs initialization file.


;;; Commentary:
;;
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-color-mode-line-error-face ((t (:inherit flycheck-fringe-error))))
 '(flycheck-color-mode-line-info-face ((t (:inherit flycheck-fringe-info))))
 '(flycheck-color-mode-line-warning-face ((t (:inherit flycheck-fringe-warning)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a802c77b818597cc90e10d56e5b66945c57776f036482a033866f5f506257bca" "b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "79a3f477ac0cb4a106f78b6109614e991564a5c2467c36e6e854d4bc1102e178" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (org-mind-map kubernetes flycheck-mypy ox-gfm magit which-key company-restclient restclient move-text ace-jump-mode helm-ag helm-swoop helm-projectile helm-flycheck helm aggressive-indent highlight-indentation whitespace-cleanup-mode hl-sexp elisp-slime-nav smart-mode-line-powerline-theme smart-mode-line powerline gruvbox-theme atom-dark-theme spacegray-theme base16-theme monokai-theme solarized-theme zenburn-theme dracula-theme jdee company-tern tern coffee-mode scss-mode sass-mode yaml-mode json-mode csv-mode intero ensime yasnippet web-mode virtualenvwrapper slime rainbow-delimiters projectile multiple-cursors git-gutter-fringe flycheck-color-mode-line exec-path-from-shell company-anaconda ag)))
 '(safe-local-variable-values (quote ((radius-code . t)))))

(require 'user-init)

(provide 'init)

;;; init.el ends here
