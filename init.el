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
   '("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default))
 '(package-selected-packages
   '(eslint-fix banner-comment dimmer direnv pcre2el evil-numbers string-inflection dashboard magit which-key move-text ace-jump-mode helm-ag helm-swoop helm-projectile helm-flycheck aggressive-indent highlight-indentation whitespace-cleanup-mode hl-sexp elisp-slime-nav beacon dockerfile-mode ansible-doc ansible doom-modeline php-mode darktooth-theme gruvbox-theme atom-dark-theme spacegray-theme base16-theme monokai-theme solarized-theme zenburn-theme dracula-theme protobuf-mode jdee coffee-mode rainbow-mode scss-mode sass-mode yaml-mode json-mode csv-mode racer rust-mode go-mode git-gutter-fringe rainbow-delimiters exec-path-from-shell helm-rg ag ibuffer-vc projectile slime flycheck-mypy virtualenvwrapper yasnippet flycheck-rust flycheck-inline flycheck-color-mode-line add-node-modules-path tide pug-mode rjsx-mode prettier-js js2-mode web-mode multiple-cursors company-flow company-restclient company-anaconda company))
 '(safe-local-variable-values
   '((eval set-)
     (eval setenv "JAVA_HOME" "~/Library/Caches/Coursier/jvm/adopt@1.8.0-272/Contents/Home")
     (eval setenv "JAVA_HOME" "/Users/huseyin/Library/Caches/Coursier/jvm/adopt@1.8.0-272/Contents/Home")
     (eval add-hook 'python-mode-hook
           #'(lambda nil
               (flycheck-select-checker 'python-mypy)))
     (eval flycheck-select-checker 'python-mypy)
     (eval setenv "PYTHONPATH"
           (concat
            (concat
             (projectile-project-root)
             "src")
            ":"
            (getenv "PATH")))
     (eval venv--activate-dir
           (concat
            (projectile-project-root)
            "gaSimilarStoreScraper/" "venv"))
     (eval venv--activate-dir
           (concat
            (projectile-project-root)
            "gaSimilarStoreScrape/" "venv"))
     (eval venv--activate-dir
           (concat
            (projectile-project-root)
            "python_to_rust_simple/" "venv"))
     (eval setq ag-ignore-list
           '("build" "node_modules" "bower_components"))
     (eval venv--activate-dir
           (concat
            (projectile-project-root)
            "python_to_python_simple/" "venv"))
     (eval setq prettier-js-args
           '("--fix"))
     (eval setq prettier-js-command "eslint")
     (eval setq prettier-js-args
           '("--semi" "true" "--single-Quote" "true" "--trailing-comma" "es5" "--print-width" "100" "--quote-props" "consistent"))
     (setq prettier-js-args
           '("--config" "all"))
     (eval prettier-js-mode t)
     (eval prettier-mode t)
     (eval setq flycheck-python-mypy-config "/Users/huseyin/GIVVA/recomendar/setup.cfg")
     (eval setq flycheck-python-mypy-config "setup.cfg")
     (eval setq flycheck-checker 'python-mypy)
     (eval setq flycheck-checker "python-mypy")
     (eval venv--activate-dir
           (concat
            (projectile-project-root)
            "venv"))
     (eval venv--activate-dir
           (concat projectile-project-root "/env"))
     (eval setq flycheck-css-stylelint-executable
           (concat projectile-project-root "/node_modules/.bin/stylelint"))
     (eval setq flycheck-scss-stylelint-executable
           (concat projectile-project-root "/node_modules/.bin/stylelint"))
     (eval setq flycheck-css-stylelint-executable
           (concat projectile-project-root "/grandfolk/node_modules/.bin/stylelint"))
     (eval setq flycheck-scss-stylelint-executable
           (concat projectile-project-root "/grandfolk/node_modules/.bin/stylelint")))))

;;; init.el ends here

(require 'user-init)

(provide 'init)
(put 'set-goal-column 'disabled nil)
