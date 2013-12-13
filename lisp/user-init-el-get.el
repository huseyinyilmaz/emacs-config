;;; user-init-el-get.el --- Configure el-get

;;; Commentary:
;; 

;;; Code:

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq-default el-get-byte-compile t)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
(setq el-get-user-package-directory "~/.emacs.d/lisp/el-get")

(message "Sync el-get recipes: %s" user-recipes)

(el-get 'sync user-recipes)
(el-get 'wait user-recipes)

(el-get 'sync)

(run-hooks 'after-el-get-sync-hook)
(provide 'user-init-el-get)

;;; user-init-el-get.el ends here
