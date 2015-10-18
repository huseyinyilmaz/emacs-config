;;; user-init-config.el --- Main emacs configuration file
;;; Commentary:
;; 

;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;
;; Dependent packages ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(defvar user-packages '(company
                        company-anaconda
                        anaconda-mode
			multiple-cursors
			web-mode
			flycheck
			flycheck-color-mode-line
			yasnippet
			;;python-mode
                        virtualenvwrapper
			slime
			projectile
			exec-path-from-shell
                        rainbow-delimiters
                        git-gutter-fringe
                        ;; various modes
                        csv-mode
                        json-mode
                        yaml-mode
                        haskell-mode
                        hi2
                        sass-mode
                        scss-mode
                        coffee-mode
                        js2-mode
                        js-comint
                        jdee
                        ;; Theme list
                        zenburn-theme
			solarized-theme
                        monokai-theme
                        base16-theme
                        spacegray-theme
                        atom-dark-theme
                        gruvbox-theme
                        ;; Mode line
                        powerline
                        smart-mode-line
                        smart-mode-line-powerline-theme
                        ;; Others
                        elisp-slime-nav
                        hl-sexp
                        whitespace-cleanup-mode
                        highlight-indentation
                        aggressive-indent
                        helm
                        helm-flycheck
                        helm-projectile
                        helm-swoop
                        ace-jump-mode
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
;; 		       "/usr/local/sbin:"
;; 		       "/usr/local/share/python:"
;; 		       (getenv "PATH")))

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

(message "load configuration")
(provide 'user-init-config)

;;; user-init-config.el ends here
