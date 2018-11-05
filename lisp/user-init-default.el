;;; user-init-default.el --- Configuraiton changes on emacs default values.
;;; Code:


;;; Commentary:
;; Default values for global environment.


;;;;;;;;;;;;;;;;;;;;;
;; disable toolbar ;;
;;;;;;;;;;;;;;;;;;;;;
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))

;;;;;;;;;;;;;;;;;;;;;;;
;; disable scrollbar ;;
;;;;;;;;;;;;;;;;;;;;;;;
;; (when (fboundp 'set-scroll-bar-mode)
;;   (set-scroll-bar-mode nil))

;;;;;;;;;;;;;;;;;;;;;;;
;; enable linum mode ;;
;;;;;;;;;;;;;;;;;;;;;;;
(if (fboundp 'global-display-line-numbers-mode)
    (global-display-line-numbers-mode t)
    (global-linum-mode))

;;;;;;;;;;;;;;;;;;;;;;
;; enable narrowing ;;
;;;;;;;;;;;;;;;;;;;;;;
(put 'narrow-to-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable paren matching mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(show-paren-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable electric pair mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(electric-pair-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable electric indent mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(electric-indent-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set regular-expression mode to string ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 're-builder)
;;(reb-change-syntax 'string)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable the splash screen ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-splash-screen t)

;;;;;;;;;;;;;;;;;;;;;
;; enable ido mode ;;
;;;;;;;;;;;;;;;;;;;;;
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use spaces instead of tabs ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set default directory ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq default-directory "~/")


;;;;;;;;;;;;;;;;;;;;;
;; set keybindings ;;
;;;;;;;;;;;;;;;;;;;;;
;; (global-set-key (kbd "C-x e") 'eval-print-last-sexp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; enable highlock mode for all parents ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-hi-lock-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run check-parens after saving any file ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'after-save-hook 'check-parens nil t)

(message "config default")
(provide 'user-init-default)
;;; user-init-default.el ends here
