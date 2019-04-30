(setq custom-file (expand-file-name "selected-package-list.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; インストールするパッケージ
(defvar my/favorite-packages
  '(yatex
	ztree
	web-mode
	sudo-ext
	shell-pop
	undo-tree
	recentf-ext
	rainbow-mode
	packed
	open-junk-file
	markdown-mode
	magit
	helm-migemo
	helm
	fuzzy
	company
	auto-save-buffers-enhanced
	auto-complete
	auto-async-byte-compile))

;; my/favorite-packagesからインストールしていないパッケージをインストール
(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
	(progn
	  ;; パッケージ情報の更新
	  (package-refresh-contents)
      (package-install package)
	  )
	)
  )
