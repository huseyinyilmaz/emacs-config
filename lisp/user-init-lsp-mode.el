;;; user-init-lsp-mode.el --- lsp-mode configuration.

;;; Commentary:
;;

;; (setq gc-cons-threshold 1000000000)
;; (setq read-process-output-max (* 10 (* 1024 1024))) ;; 1mb
;; (setq lsp-completion-provider :capf)
;; (setq lsp-idle-delay 0.500)

;;; Code:

(defun user-init-set-lsp-mode ()
  "Set lsp mode."
  (setq gc-cons-threshold 1000000000)
  (setq read-process-output-max (* 10 1024 1024)) ;; 1mb
  (setq lsp-completion-provider :capf)
  (setq lsp-idle-delay 0.500)
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-lens-enable t)
  (setq lsp-ui-sideline-show-diagnostics t)
  (setq lsp-ui-sideline-show-code-actions t)
  ;; (setq lsp-ui-sideline-enable t)
  ;; (setq lsp-ui-sideline-update-mode 'line)
  (setq lsp-ui-sideline-show-hover t)
  ;; lsp ui peek
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-doc-use-childframe nil)
  ;; this stops freezes when get lsp results
  (setq lsp-print-performance t)
  ;; start lsp
  (require 'lsp-pyright)
  (lsp)
  ;; (lsp-deferred)
  (message "lsp mode is activated")
)

;; (defun user-init-set-lsp-lens-mode ()
;;   "Set lsp lens mode."
;;   (lsp-lens-mode)
;;   (message "lsp lens mode is activated")
;; )


;; (add-hook 'lsp-after-initialize-hook 'user-init-set-lsp-lens-mode)

;; (add-hook 'lsp-mode-hook )

(add-hook 'go-mode-hook 'user-init-set-lsp-mode)
(add-hook 'scala-mode-hook 'user-init-set-lsp-mode)
(add-hook 'typescript-mode-hook 'user-init-set-lsp-mode)
(add-hook 'rust-mode-hook 'user-init-set-lsp-mode)
(add-hook 'python-mode-hook 'user-init-set-lsp-mode)

;; (add-hook 'python-mode-hook #'lsp)
;; https://emacs-lsp.github.io/lsp-mode/page/performance/

(provide 'user-init-lsp-mode)

;;; user-init-lsp-mode.el ends here
