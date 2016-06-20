;;; user-init-haskell-mode.el --- configuration for haskell mode

;;; Commentary:
;;
;;; Code:

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;; Show type info of symbol underlined
(add-hook 'haskell-mode-hook 'haskell-doc-mode)

;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;; (add-hook 'haskell-mode-hook 'turn-on-hi2)

;; Company ghc keep opening file dialog for some reason.
;; (add-hook 'haskell-mode-hook #'(lambda()
;;                                (add-to-list 'company-backends 'company-ghc)))

(provide 'user-init-haskell-mode)

;;; user-init-haskell-mode.el ends here
