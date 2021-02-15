;;; user-init-config.el --- Main emacs configuration file
;;; Commentary:
;;

;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;
;; Dependent packages ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(defvar user-packages '(company
                        company-anaconda
                        company-restclient
                        company-flow
                        anaconda-mode
                        multiple-cursors
                        web-mode
                        js2-mode
                        eslint-fix
                        rjsx-mode
                        pug-mode
                        tide
                        add-node-modules-path
                        flycheck
                        flycheck-color-mode-line
                        flycheck-inline
                        flycheck-rust
                        yasnippet
                        org
                        ;;python-mode
                        virtualenvwrapper
                        flycheck-mypy
                        python-black
                        slime
                        projectile
                        ibuffer-vc
                        ag ;; silver searcher support for projectile
                        helm-rg
                        exec-path-from-shell
                        rainbow-delimiters
                        git-gutter-fringe
                        ;;
                        go-mode
                        rust-mode
                        racer
                        ;; scala
                        lsp-metals
                        scala-mode
                        ;; Haskell modes
                        intero
                        ;; various modes
                        csv-mode
                        json-mode
                        yaml-mode
                        sass-mode
                        scss-mode
                        rainbow-mode
                        coffee-mode
                        json-reformat
                        jdee
                        protobuf-mode
                        ;; Theme list
                        dracula-theme
                        zenburn-theme
                        solarized-theme
                        monokai-theme
                        base16-theme
                        spacegray-theme
                        atom-dark-theme
                        gruvbox-theme
                        darktooth-theme
                        ;; php
                        php-mode
                        ;; Mode line
                        ;; powerline
                        ;; smart-mode-line
                        ;; smart-mode-line-powerline-theme
                        doom-modeline
                        ;; Ansible
                        ansible
                        ansible-doc
                        ;; docker
                        dockerfile-mode
                        ;; Others
                        beacon
                        elisp-slime-nav
                        whitespace-cleanup-mode
                        highlight-indentation
                        aggressive-indent
                        helm
                        helm-flycheck
                        helm-projectile
                        helm-swoop
                        helm-ag
                        ace-jump-mode
                        move-text
                        restclient
                        which-key
                        magit
                        dashboard
                        string-inflection
                        evil-numbers
                        pcre2el ;; use defaut regex.
                        ;; dired+
                        direnv
                        dimmer
                        banner-comment
                        ;; eglot
                        lsp-mode
                        helm-lsp
                        ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Dependent el-get recipes ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar user-recipes '(
                       ;; edts
                       ;; distel
                       ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang configurations ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; erlang root directory that will be used
;; erlang-mode will be also used from this distrubition
(defvar erlang-root-dir "/usr/local/opt/erlang/lib/erlang")

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Lisp configurations ;;
;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration uses slime-helper to connect to slime
;; if you are not using it. you can just leave it as it is.
(defvar slime-helper-path
  (expand-file-name "~/quicklisp/slime-helper.el"))
;; path for lisp implementation you want to use.
(defvar inferior-lisp-path "sbcl")


;; (setenv "PATH" (concat "/usr/local/bin:"
;;                     "/usr/local/sbin:"
;;                     "/usr/local/share/python:"
;;                     (getenv "PATH")))

(defvar user-init-paths
  '("/usr/bin"
    "/usr/local/bin"
    "/usr/local/sbin"
    "/usr/local/share/python"
    )
  )


(defvar user-init-python-paths
  '("/Library/Python/2.7/site-packages")
  )


(put 'flycheck-scss-stylelint-executable 'safe-local-variable 'stringp)
(put 'flycheck-css-stylelint-executable 'safe-local-variable 'stringp)

(message "load configuration")
(provide 'user-init-config)

;;; user-init-config.el ends here
