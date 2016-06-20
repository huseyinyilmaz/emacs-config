;;; user-init-restclient.el --- restclient init

;;; Commentary:
;;

(add-to-list 'company-backends 'company-restclient)

;; (add-hook 'after-init-hook
;;           (lambda () (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)))


(provide 'user-init-restclient)

;;; user-init-restclient.el ends here
