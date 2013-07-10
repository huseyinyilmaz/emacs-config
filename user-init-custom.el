(defvar irc-server-buffer-metglobal nil)
(defvar irc-server-buffer-freenode nil)

(defun connect-irc ()
  "Little Hack that automatically connects me to default channels"
  (interactive)
  ;; if server buffers are active kill them
  (when irc-server-buffer-metglobal
    (kill-buffer irc-server-buffer-metglobal))
  (when irc-server-buffer-metglobal
    (kill-buffer irc-server-buffer-metglobal))
  
  (setf irc-server-buffer-metglobal (erc :server "irc.metglobal.com"
					 :port 6667 :nick "huseyinyilmaz")
        irc-server-buffer-freenode (erc :server "irc.freenode.net" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-freenode)
  (erc-join-channel "pyistanbul")
  (set-buffer irc-server-buffer-metglobal)
  (erc-join-channel "zurna"))

(message "config custom values")

(provide 'user-init-custom)
;;; user-init-custom.el ends here
