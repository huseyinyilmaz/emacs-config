;;; user-init-nix.el --- nix integration

;;; Commentary:
;;

(setq flycheck-command-wrapper-function
        (lambda (command) (apply 'nix-shell-command (nix-current-sandbox) command))
      flycheck-executable-find
        (lambda (cmd) (nix-executable-find (nix-current-sandbox) cmd)))

(provide 'user-init-nix)

;;; user-init-nix.el ends here
