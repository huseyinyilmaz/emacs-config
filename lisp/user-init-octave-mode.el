;; octave mode is already available in emacs distribution.
;; this file just enables it for .m files
;; and also enables autofill mode etc.
;;
;; source = http://sunsite.univie.ac.at/textbooks/octave/octave_34.html
;;
;; octave variables that can be added
;; octave-auto-indent
;; Non-nil means auto-indent the current line after a semicolon or space. Default is nil.
;;
;; octave-auto-newline
;; Non-nil means auto-insert a newline and indent after semicolons are typed. The default value is nil.
;;
;; octave-blink-matching-block
;; Non-nil means show matching begin of block when inserting a space, newline or `;' after an else or end keyword. Default is t. This is an extremely useful feature for automatically verifying that the keywords match--if they don't, an error message is displayed.
;;
;; octave-block-offset
;; Extra indentation applied to statements in block structures. Default is 2.
;;
;; octave-continuation-offset
;; Extra indentation applied to Octave continuation lines. Default is 4.
;;
;; octave-continuation-string
;; String used for Octave continuation lines. Normally `\'.
;;
;; octave-mode-startup-message
;; If t (default), a startup message is displayed when Octave mode is called.

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))


(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))
(message "config octave-mode")
(provide 'user-init-octave-mode)
;;; user-init-octave-mode.el ends here
