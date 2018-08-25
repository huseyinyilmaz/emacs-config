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
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
    (vcl-mode zenburn-theme yaml-mode whitespace-cleanup-mode which-key web-mode virtualenvwrapper string-inflection spacegray-theme solarized-theme smart-mode-line-powerline-theme slime scss-mode sass-mode rainbow-mode rainbow-delimiters php-mode pcre2el multiple-cursors move-text monokai-theme magit json-mode js2-mode jdee intero ibuffer-vc hl-sexp highlight-indentation helm-swoop helm-projectile helm-flycheck helm-ag gruvbox-theme go-mode git-gutter-fringe flycheck-mypy flycheck-color-mode-line exec-path-from-shell evil-numbers ensime elisp-slime-nav dracula-theme dockerfile-mode dimmer dashboard csv-mode company-tern company-restclient company-flow company-anaconda coffee-mode beacon base16-theme banner-comment atom-dark-theme ansible-doc ansible aggressive-indent ag add-node-modules-path ace-jump-mode)))
 '(safe-local-variable-values
   (quote
    ((eval setq flycheck-css-stylelint-executable
           (concat projectile-project-root "/node_modules/.bin/stylelint"))
     (eval setq flycheck-scss-stylelint-executable
           (concat projectile-project-root "/node_modules/.bin/stylelint"))
     (eval setq flycheck-css-stylelint-executable
           (concat projectile-project-root "/grandfolk/node_modules/.bin/stylelint"))
     (eval setq flycheck-scss-stylelint-executable
           (concat projectile-project-root "/grandfolk/node_modules/.bin/stylelint"))))))

;;; init.el ends here

(require 'user-init)

(provide 'init)
