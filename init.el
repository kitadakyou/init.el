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

(setq custom-file (expand-file-name "selected-package-list.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-loader)
(init-loader-load)
