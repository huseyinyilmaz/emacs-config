;;; user-init-web-mode.el --- Configuration for web-mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook
          #'(lambda ()
              (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))

              ;; Set default engine to django
              (defvar web-mode-engines-alist
                    '(("django"    . "\\.html\\'")))

              (defvar web-mode-enable-block-face t)
              (defvar web-mode-enable-part-face t)
              (defvar web-mode-enable-current-element-highlight t)
              (defvar web-mode-enable-comment-keywords t)

              (defvar web-mode-enable-auto-closing t)
              (defvar web-mode-enable-auto-quoting t)

              (defvar web-mode-markup-indent-offset 2)
              (defvar web-mode-css-indent-offset 2)
              (defvar web-mode-code-indent-offset 2)

              (defun web-mode-hook ()
                "Hooks for Web mode."
                (defvar web-mode-markup-indent-offset 2)
                (defvar web-mode-css-indent-offset 2)
                (defvar web-mode-code-indent-offset 2))

              (add-hook 'web-mode-hook  'web-mode-hook)
              ))


(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(add-hook 'after-init-hook
          #'(lambda ()
              (add-hook 'js-mode-hook 'js2-minor-mode)
              (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
              (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
              (add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))
              (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
              ))


;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))


(message "config web-mode")
(provide 'user-init-web-mode)
;;; user-init-web-mode.el ends here
