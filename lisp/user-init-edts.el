;;; user-init-edts.el --- Configure edts

;;; Commentary:
;; 

;;; Code:

(defun user-init-edts-configure ()
  (require 'edts-start))

(add-hook 'erlang-mode-hook #'user-init-edts-configure)

(provide 'user-init-edts)
;;; user-init-edts.el ends here
