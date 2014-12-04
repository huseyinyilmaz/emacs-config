;;; user-init-haskell-mode.el --- configuration for haskell mode

;;; Commentary:
;;
;;; Code:

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-hi2)

(provide 'user-init-haskell-mode)

;;; user-init-haskell-mode.el ends here
