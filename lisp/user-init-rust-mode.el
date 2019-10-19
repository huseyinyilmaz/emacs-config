;;; user-init-rust-mode.el --- Configure rust mode

;;; Commentary:
;;

(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)

(add-hook
 'racer-mode-hook
 #'(lambda()
     (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
     (setq company-tooltip-align-annotations t)
     (eldoc-mode)
     )
)

(provide 'user-init-rust-mode)

;;; user-init-rust-mode.el ends here
