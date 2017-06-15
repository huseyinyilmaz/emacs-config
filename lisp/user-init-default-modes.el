;;; user-init-default-modes.el --- Configuration for some small modes.

;;; Commentary:
;;

;;; Code:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; which-key-mode configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook #'which-key-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; move-text-mode configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook (lambda ()
                             (global-set-key (kbd "M-p") 'move-text-up)
                             (global-set-key (kbd "M-n") 'move-text-down)))


;;;;;;;;;;;;;;;;;;;;;;;;;
;; magit configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook (lambda ()
                             (global-set-key (kbd "C-x g") 'magit-status)))

;;;;;;;;;;;;;;;;;
;; beacon mode ;;
;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook #'beacon-mode)


;;;;;;;;;;;;;;;;;;
;; subword mode ;;
;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook #'global-subword-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; string inflection mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)

(provide 'user-init-default-modes)

;;; user-init-default-modes.el ends here
