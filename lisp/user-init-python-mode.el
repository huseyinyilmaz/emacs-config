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
(defvar py-indent-honors-inline-comment 1)
(defvar py-smart-indentation 1)
; Delete trailing whitespace maybe left by py-newline-and-indent
(defvar py-newline-delete-trailing-whitespace-p 1)
; TAB will indent/cycle the region, not just the current line
(defvar py-tab-shifts-region-p 1)
; Format the whole docstring
(defvar py-paragraph-fill-docstring-p 1)


; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(defvar py-python-command-args
  '("--gui=wx" "--pylab=wx" "--colors" "Linux"))
(defvar py-force-py-shell-name-p t)

; unload python-mode
(when (featurep 'python) (unload-feature 'python t))

(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'python-mode)
              ;; we need this because virtualenv-workon command
              ;; assumes that shell is exist
              (shell)
              ))

(add-hook 'python-mode-hook #'subword-mode)


;; Set a line on column 79 in python mode
;; (add-hook 'python-mode-hook #'(lambda ()
;; 				(defvar fci-rule-column 79)
;; 				(fci-mode)))


;; configure hightlight-indentation
;; (add-hook 'python-mode-hook #'(lambda ()
;;                                 (highlight-indentation-mode 1)
;;                                 (set-face-background 'highlight-indentation-face "#363d3f")
;;                                ))


;; http://www.emacswiki.org/emacs/AutoIndentation
;; Seem that electric-indent-mode doesn’t work properly with python-mode. You can use this snippet:

;; Ignoring electric indentation
;; XXX This is called in every indentation. is there a better way?
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for `python-mode`.
Argument CHAR electric-indent-function that is not used."
  (if (equal major-mode 'python-mode)
      `no-indent'
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)
;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent`."
  (local-set-key (kbd "RET") 'newline-and-indent))

(add-hook 'python-mode-hook 'set-newline-and-indent)
;; (add-hook 'python-mode-hook 'rainbow-delimeters)


(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
