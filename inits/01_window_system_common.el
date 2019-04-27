(when window-system
  ;; 余計な物を表示しない
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  
  ;; マウスホイール有効
  (mouse-wheel-mode t)
  (setq mouse-sheel-follow-mouse t)
  (setq mouse-wheel-progressive-speed nil)
  
  ;; クリップボード共有
  (setq x-select-enable-clipboard t)
  
  ;; カーソルの設定
  (set-cursor-color "blue")
  (setq blink-cursor-interval 0.7)
  (setq blink-cursor-delay 1.0)
  (blink-cursor-mode 1)
  
  ;; 全角スペースなどを可視化
  (defface my-face-b-1 '((t (:background "medium aquamarine"))) nil)
  (defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
  (defvar my-face-b-1 'my-face-b-1)
  (defvar my-face-u-1 'my-face-u-1)
  (defadvice font-lock-mode (before my-font-lock-mode ())
	(font-lock-add-keywords
	 major-mode
	 '(
       ("¡¡" 0 my-face-b-1 append)
       ("[ ]+$" 0 my-face-u-1 append)
       )))
  (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
  (ad-activate 'font-lock-mode)
  (add-hook 'find-file-hooks
			'(lambda ()
               (if font-lock-mode nil
				 (font-lock-mode t))) t)
  
  ;; ダークテーマを適用
  (load-theme 'wombat t)
  ;; helm-find-file の色がダークテーマと相性が悪いので変更
  (custom-set-faces
   '(helm-buffer-file ((t (:inherit font-lock-builtin-face :foreground "ivory"))))
   '(helm-ff-directory ((t (:background "LightGray" :foreground "ivory"))))
   '(helm-ff-file ((t (:inherit font-lock-builtin-face :foreground "ivory")))))
)
