;;; Code:
(add-to-list 'load-path "~/.emacs.d")

;; Init packages
(require 'user-init-config)
(require 'user-init-default)
(require 'user-init-packages)
(require 'user-init-zenburn)
(require 'user-init-auto-complete)
(require 'user-init-multiple-cursors)
(require 'user-init-web-mode)
(require 'user-init-flycheck)
(require 'user-init-jedi)
(require 'user-init-yasnippet)
(require 'user-init-python-mode)
(require 'user-init-erlang-mode)
(require 'user-init-octave-mode)
(require 'user-init-slime)
(require 'user-init-paths)
(require 'user-init-custom)

;; run local configuration after rest of the system is initialized
(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'user-init-locals)))
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#708183" "#c60007" "#728a05" "#a57705" "#2075c7" "#c61b6e" "#259185" "#042028"))
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "9f443833deb3412a34d2d2c912247349d4bd1b09e0f5eaba11a3ea7872892000" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(fci-rule-color "#0a2832")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#c60007") (40 . "#bd3612") (60 . "#a57705") (80 . "#728a05") (100 . "#259185") (120 . "#2075c7") (140 . "#c61b6e") (160 . "#5859b7") (180 . "#c60007") (200 . "#bd3612") (220 . "#a57705") (240 . "#728a05") (260 . "#259185") (280 . "#2075c7") (300 . "#c61b6e") (320 . "#5859b7") (340 . "#c60007") (360 . "#bd3612"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
