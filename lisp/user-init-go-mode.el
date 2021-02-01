;;; user-init-go-mode.el --- Configuration for go mode.

;;; Commentary:
;;

;; LSP mode is implemented in user-init-lsp-mode.el



(add-hook 'go-mode-hook (lambda () (add-hook 'before-save-hook 'gofmt-before-save)))

(provide 'user-init-go-mode)

;;; user-init-go-mode.el ends here
