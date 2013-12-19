;;; user-init-custom.el --- Add custom commands to emacs

;;; Commentary:
;; 

;;; Code:
(defvar irc-server-buffer-freenode nil)

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
  "Little Hack that automatically connects me to default channels."
  (interactive)
  (python-istanbul-irc))


(message "config custom values")

(provide 'user-init-custom)



;;; user-init-custom.el ends here
