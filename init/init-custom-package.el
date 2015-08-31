;;; init-custom-package


;; add package repository
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; refresh packages repository
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
;; evil mode
(init-custom-fn-ensure-install 'evil)
(require 'evil)
(evil-mode t)
;; graham theme
(init-custom-fn-ensure-install 'sublime-themes)
(load-theme 'graham t)
;; magit
(init-custom-fn-ensure-install 'magit)
;; zencoding mode
(init-custom-fn-ensure-install 'zencoding-mode)
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)


;;; provide init-custom-package
(provide 'init-custom-package)