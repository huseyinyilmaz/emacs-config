;;; package -- Summary:
;;; Commentary:

;;; Code:
(defun ipython-check ()
  "Check if there is an ipython call in buffer."
  (interactive)
  (search-forward "import ipdb"))


(defun open-elisp-intro-book ()
  "Shortcut for opening elisp intro book.
So I will not have to remember to command."
  (interactive)
  (info "(eintr) Top"))

(provide 'user-init-development)
;;; user-init-development.el ends here
