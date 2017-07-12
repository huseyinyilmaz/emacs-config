;;; user-init-ibuffer-mode.el --- Ibuffer configuration

;;; Commentary:
;;

;;; Code:
(add-hook 'ibuffer-hook 'ibuffer-vc-set-filter-groups-by-vc-root)

;; (add-hook 'ibuffer-hook
;;     (lambda ()
;;       (ibuffer-projectile-set-filter-groups)
;;       (unless (eq ibuffer-sorting-mode 'alphabetic)
;;         (ibuffer-do-sort-by-alphabetic))))

(provide 'user-init-ibuffer-mode)

;;; user-init-ibuffer-mode.el ends here
