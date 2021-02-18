;;; user-init-lsp-mode.el --- lsp-mode configuration.

;;; Commentary:
;;

;; (setq gc-cons-threshold 1000000000)
;; (setq read-process-output-max (* 10 (* 1024 1024))) ;; 1mb
;; (setq lsp-completion-provider :capf)
;; (setq lsp-idle-delay 0.500)



(defun set-lsp-mode ()
  "Set lsp mode"
  (setq gc-cons-threshold 1000000000)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-completion-provider :capf)
  (setq lsp-idle-delay 0.500)
  (setq lsp-keymap-prefix "C-c l")
  (lsp)
  (message "lsp mode is activated")
)

(add-hook 'go-mode-hook 'set-lsp-mode)
(add-hook 'scala-mode-hook 'set-lsp-mode)
(add-hook 'typescript-mode-hook 'set-lsp-mode)

(add-hook 'python-mode-hook
          #'(lambda ()
              (setq gc-cons-threshold 1000000000)
              (setq read-process-output-max (* 1024 1024)) ;; 1mb
              (setq lsp-completion-provider :capf)
              (setq lsp-idle-delay 0.500)
              (setq lsp-keymap-prefix "C-c l")
              (lsp)
              (message "lsp mode is activated")
              )
          )


;; (add-hook 'python-mode-hook #'lsp)
;; https://emacs-lsp.github.io/lsp-mode/page/performance/

(provide 'user-init-lsp-mode)

;;; user-init-lsp-mode.el ends here
