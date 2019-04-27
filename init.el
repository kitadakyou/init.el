(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(unless 
    (package-installed-p 'init-loader) 
    (progn
        (package-refresh-contents)
        (package-install 'init-loader)
    )
)

(require 'init-loader)
(init-loader-load)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(yatex ztree web-mode sudo-ext shell-pop redo+ recentf-ext rainbow-mode packed open-junk-file markdown-mode magit init-loader helm-migemo helm git-rebase-mode git-commit-mode fuzzy company auto-save-buffers-enhanced auto-complete auto-async-byte-compile)))
; '(shell-pop-shell-type
;   (quote
;	("ansi-term" "*ansi-term*"
;	 (lambda nil
;	   (ansi-term shell-pop-term-shell)))))
; '(shell-pop-term-shell "/bin/bash")
; '(shell-pop-window-position "bottom")
; '(shell-pop-window-size 60)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-buffer-file ((t (:inherit font-lock-builtin-face :foreground "ivory"))))
 '(helm-ff-directory ((t (:background "LightGray" :foreground "ivory"))))
 '(helm-ff-file ((t (:inherit font-lock-builtin-face :foreground "ivory")))))
