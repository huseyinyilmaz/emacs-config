;;; user-init-web-mode.el --- Configuration for web-mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook
          #'(lambda ()
              (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
              (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
              ;; (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
              (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . rjsx-mode))

              ;; Set default engine to django
              (defvar web-mode-engines-alist
                    '(("django"    . "\\.html\\'")))

              ;; experiment
              (defvar web-mode-content-type "jsx")
              (defvar web-mode-enable-auto-quoting nil)
              ;; (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
              ;; experiment end

              (defvar web-mode-enable-block-face t)
              (defvar web-mode-enable-part-face t)
              (defvar web-mode-enable-current-element-highlight t)
              (defvar web-mode-enable-comment-keywords t)

              (defvar web-mode-enable-auto-closing t)
              (defvar web-mode-enable-auto-quoting t)

              (defvar web-mode-markup-indent-offset 2)
              (defvar web-mode-css-indent-offset 2)
              (defvar web-mode-code-indent-offset 2)
              (defvar css-indent-offset 2)
              (defun web-mode-hook ()
                "Hooks for Web mode."
                (defvar web-mode-markup-indent-offset 2)
                (defvar web-mode-css-indent-offset 2)
                (defvar web-mode-code-indent-offset 2))

              (add-hook 'web-mode-hook  'web-mode-hook)
              ))


(add-hook 'js2-mode-hook (lambda ()
                           (setq js2-basic-offset 2)
                           (setq js2-strict-trailing-comma-warning nil)
                           (setq js2-strict-missing-semi-warning nil)
                           (setq js2-missing-semi-one-line-override nil)

                           (setq js2-mode-show-parse-errors nil)
                           (setq js2-mode-show-strict-warnings nil)
                           (setq js2-strict-inconsistent-return-warning nil)
                           (setq js2-strict-cond-assign-warning nil)
                           (setq js2-strict-var-redeclaration-warning nil)
                           (setq js2-strict-var-hides-function-arg-warning nil)
                           ))

(add-hook 'after-init-hook
          #'(lambda ()
              ;; (add-hook 'js-mode-hook 'js2-minor-mode)
              (add-hook 'web-mode-hook 'js2-minor-mode)
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

(eval-after-load 'web-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

(eval-after-load 'js-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook #'add-node-modules-path))

(eval-after-load 'typescript-mode
  '(progn
     (add-hook 'typescript-mode-hook #'add-node-modules-path)
))

;; (add-hook 'js2-mode-hook 'prettier-js-mode)
;; (add-hook 'web-mode-hook 'prettier-js-mode)

(message "config web-mode")
(provide 'user-init-web-mode)
;;; user-init-web-mode.el ends here
