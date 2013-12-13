;;; user-init-flyspell.el --- Configure flyspell

;;; Commentary:
;;  Gives spelling suggestions for programming languages

;;; Code:

;; TODO: Add exception handling.
;; if ispell is not installed this is function should not raise an error.
(add-hook 'prog-mode-hook #'flyspell-prog-mode)

(provide 'user-init-flyspell)

;;; user-init-flyspell.el ends here
