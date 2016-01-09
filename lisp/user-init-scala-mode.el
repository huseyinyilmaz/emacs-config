;;; user-init-scala-mode.el --- Scala mode configuration


;;; Commentary:
;;

;;; Code:

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;; OPTIONAL
;; there are some great Scala yasnippets, browse through:
;; https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
(add-hook 'scala-mode-hook #'yas-minor-mode)
;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
;; (define-key company-active-map [tab] nil)
(provide 'user-init-scala-mode)

;;; user-init-scala-mode.el ends here
