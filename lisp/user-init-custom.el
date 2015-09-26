;;; user-init-custom.el --- Add custom commands to emacs

;;; Commentary:
;; 

;;; Code:
(defvar irc-server-buffer-freenode nil)


(defun sort-lines-nocase ()
  "Case insensitive sort lines.
Source: http://stackoverflow.com/a/20967895/350127"
  (interactive)
  (let ((sort-fold-case t))
    (call-interactively 'sort-lines)))


(defun kill-buffer-if-exist (buffer)
  "Kill BUFFER if it is exist."
  (when (bufferp buffer) (kill-buffer buffer)))

(defun python-istanbul-irc ()
  "Connect to python Istanbul."
  (interactive)
  ;; kill existing buffers
  (kill-buffer-if-exist (get-buffer "#pyistanbul"))
  (kill-buffer-if-exist irc-server-buffer-freenode)
  
  (setf irc-server-buffer-freenode (erc :server "irc.freenode.net" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-freenode)
  (erc-join-channel "pyistanbul"))

(defun emacs-irc ()
  "Connect to Emacs irc channel."
  (interactive)
  ;; kill existing buffers
  (kill-buffer-if-exist (get-buffer "#emacs"))
  (kill-buffer-if-exist irc-server-buffer-freenode)
  
  (setf irc-server-buffer-freenode (erc :server "irc.freenode.net" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-freenode)
  (erc-join-channel "emacs"))


(defun connect-irc ()
  "Connect to python istanbul and Emacs channel."
  (interactive)
  ;; kill existing buffers
  (kill-buffer-if-exist (get-buffer "#emacs"))
  (kill-buffer-if-exist irc-server-buffer-freenode)
  
  (setf irc-server-buffer-freenode (erc :server "irc.freenode.net" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-freenode)
  (erc-join-channel "python-istanbul")
  (erc-join-channel "emacs")
  )


(defun unhtml (start end)
  "Source: http://shallowsky.com/blog/linux/editors/emacs-escape-html.html.
Argument START Starting point.
Argument END End point."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (goto-char (point-min))
      (replace-string "&" "&amp;")
      (goto-char (point-min))
      (replace-string "<" "&lt;")
      (goto-char (point-min))
      (replace-string ">" "&gt;")
      )))

(message "config custom values")

(provide 'user-init-custom)



;;; user-init-custom.el ends here
