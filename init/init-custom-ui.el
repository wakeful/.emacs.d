;;; init-custom-ui


;; ui
(defalias 'yes-or-no-p 'y-or-n-p)
(display-battery-mode 1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)
(tool-bar-mode -1)
;; editor
(global-hl-line-mode 1)
(global-linum-mode 1)
(column-number-mode 1)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment "UTF-8")
(subword-mode 1) ; camelCase cursor


;;; provide init-custom-ui
(provide 'init-custom-ui)