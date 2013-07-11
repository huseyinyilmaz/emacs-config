;;; Code:
(defvar irc-server-buffer-freenode nil)

(defun kill-buffer-if-exist (buffer)
  "Kills buffer if it is exist."
  (when (bufferp buffer) (kill-buffer buffer)))

(defun python-istanbul-irc ()
  (interactive)
  ;; kill existing buffers
  (kill-buffer-if-exist (get-buffer "#pyistanbul"))
  (kill-buffer-if-exist irc-server-buffer-freenode)
  
  (setf irc-server-buffer-freenode (erc :server "irc.freenode.net" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-freenode)
  (erc-join-channel "pyistanbul"))

(defvar irc-server-buffer-metglobal nil)
(defun metglobal-irc ()
  (interactive)
  ;; kill existing buffers
  (kill-buffer-if-exist (get-buffer "#zurna"))
  (kill-buffer-if-exist irc-server-buffer-metglobal)
  
  (setf irc-server-buffer-metglobal (erc :server "irc.metglobal.com" :port 6667
					:nick "huseyinyilmaz"))
  (set-buffer irc-server-buffer-metglobal)
  (erc-join-channel "zurna"))


(defun connect-irc ()
  "Little Hack that automatically connects me to default channels"
  (interactive)
  ;; if server buffers are active kill them
  (python-istanbul-irc)
  (metglobal-irc))
  
(message "config custom values")

(provide 'user-init-custom)
;;; user-init-custom.el ends here
