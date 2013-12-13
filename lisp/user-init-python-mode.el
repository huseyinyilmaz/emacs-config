;; package --- Summary
;;; configure python shell
;;; Commentary:
;; (defvar  py-shell-name "ipython")

;;; Code:
; switch to the interpreter after executing code
(defvar py-switch-buffers-on-execute-p t)
(defvar py-shell-switch-buffers-on-execute-p t)
; don't split windows
(defvar py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(defvar py-smart-indentation t)

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(defvar py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(defvar py-force-py-shell-name-p t)


(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'python-mode)))

(add-hook 'python-mode-hook #'subword-mode)
;; Set a line on column 79 in python mode
(add-hook 'python-mode-hook #'(lambda ()
				(defvar fci-rule-column 79)
				(fci-mode)))
(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
