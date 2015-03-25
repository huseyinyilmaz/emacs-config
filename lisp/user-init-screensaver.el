;;; user-init-screensaver.el --- Screen saver configuration

;;; Commentary:
;; 

;;; Code:

;;;;;;;;;;;;;;;;;;;
;; enable zoning ;;
;;;;;;;;;;;;;;;;;;;

(require 'zone)

(let ((user-init-screensaver-timeout (* 60 5)))  ;; five minutes
  (zone-when-idle user-init-screensaver-timeout)
)

(provide 'user-init-screensaver)

;;; user-init-screensaver.el ends here

