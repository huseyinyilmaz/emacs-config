;;; user-init-default.el --- Configuraiton changes on emacs default values.
;;; Code:


;;; Commentary:
;; Default values for global environment.


;;;;;;;;;;;;;;;;;;;;;
;; disable toolbar ;;
;;;;;;;;;;;;;;;;;;;;;
(tool-bar-mode -1)

;;;;;;;;;;;;;;;;;;;;;;;
;; enable linum mode ;;
;;;;;;;;;;;;;;;;;;;;;;;
(global-linum-mode 1)

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
(reb-change-syntax 'string)

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
;; Use spaces instead of tabs ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)



(message "config default")
(provide 'user-init-default)
;;; user-init-default.el ends here

