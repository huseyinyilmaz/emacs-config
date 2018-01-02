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

;;;;;;;;;;;;;;;;;;
;; ibuffer mode ;;
;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x C-b") 'ibuffer) ;; Use Ibuffer for Buffer List

;;;;;;;;;;;;;;;;;;;;;;;
;; evil numbers mode ;;
;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

;;;;;;;;;;;;;;;;;;;;;;
;; multiple cursors ;;
;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;;;;;;;;;;;;;;;
;; pcri mode ;;
;;;;;;;;;;;;;;;

;; So when we enter regexes we would not need to escape characters.
(add-hook 'after-init-hook #'pcre-mode)


;;;;;;;;;;;;;;;;;
;; dimmer mode ;;
;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook #'dimmer-mode)


(provide 'user-init-default-modes)

;;; user-init-default-modes.el ends here
