;;; user-init-format-all-mode.el --- Config for format-all-mode

;;; Commentary:
;;

(add-hook 'format-all-mode-hook 'format-all-ensure-formatter)

;; (setq-default format-all-formatters '(("Go" goimports)
;;                                       ("SQL" pgformatter)
;;                                       ("HTML" prettier)
;;                                       ("Shell" shfmt)
;;                                       ("Lua" prettier)
;;                                       )))

(provide 'user-init-format-all-mode)

;;; user-init-format-all-mode.el ends here
