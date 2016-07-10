;;; init-custom-keys


;; shell
(global-set-key (kbd "<f1>") nil) ; <F1>
(global-set-key (kbd "<f1>") 'shell) ; <F1>
;; calendar
(global-set-key (kbd "<f2>") nil) ; <F2>
(global-set-key (kbd "<f2>") 'calendar) ; <F2>
;; Meta+p
(global-set-key (kbd "M-p") nil) ; Meta+p
;; new buffer
(global-set-key (kbd "M-p c") nil) ; Meta+p c
(global-set-key (kbd "M-p c") 'init-custom-fn-new-empty-buffer) ; Meta+p c
;; new frame
(global-set-key (kbd "M-p TAB c") nil) ; Meta+p <TAB> c
(global-set-key (kbd "M-p TAB c") 'make-frame-command) ; Meta+p <TAB> c
;; next buffer
(global-set-key (kbd "M-p n") nil) ; Meta+p n
(global-set-key (kbd "M-p n") 'next-buffer) ; Meta+p n
(global-set-key (kbd "<f12>") nil) ; <F12>
(global-set-key (kbd "<f12>") 'next-buffer) ; <F12>
;; next frame
(global-set-key (kbd "M-p TAB TAB") nil) ; Meta+p <TAB> <TAB>
(global-set-key (kbd "M-p TAB TAB") (lambda () (interactive) (other-frame 1))) ; Meta+p <TAB> <TAB>
(global-set-key (kbd "M-p TAB n") nil) ; Meta+p <TAB> n
(global-set-key (kbd "M-p TAB n") (lambda () (interactive) (other-frame 1))) ; Meta+p <TAB> n
;; next window
(global-set-key (kbd "M-p N") nil) ; Meta+p N
(global-set-key (kbd "M-p N") (lambda () (interactive) (other-window 1))) ; Meta+p N
;; previous buffer
(global-set-key (kbd "M-p p") nil) ; Meta+p p
(global-set-key (kbd "M-p p") 'previous-buffer) ; Meta+p p
(global-set-key (kbd "<f11>") nil) ; <F11>
(global-set-key (kbd "<f11>") 'previous-buffer) ; <F11>
;; previous frame
(global-set-key (kbd "M-p TAB p") nil) ; Meta+p <TAB> p
(global-set-key (kbd "M-p TAB p") (lambda () (interactive) (other-frame -1))) ; Meta+p <TAB> p
;; previous window
(global-set-key (kbd "M-p P") nil) ; Meta+p P
(global-set-key (kbd "M-p P") (lambda () (interactive) (other-window -1))) ; Meta+p P
;; split window horizontally
(global-set-key (kbd "M-p S") nil) ; Meta+p S
(global-set-key (kbd "M-p S") 'split-window-below) ; Meta+p S
;; split window vertically
(global-set-key (kbd "M-p |") nil) ; Meta+p |
(global-set-key (kbd "M-p |") 'split-window-right) ; Meta+p |
;; delete all other frames
(global-set-key (kbd "M-p TAB Q") nil) ; Meta+p <TAB> Q
(global-set-key (kbd "M-p TAB Q") 'delete-other-frames) ; Meta+p <TAB> Q
;; delete current window
(global-set-key (kbd "M-p q") nil) ; Meta+p q
(global-set-key (kbd "M-p q") 'delete-window) ; Meta+p q
;; delete all other windows
(global-set-key (kbd "M-p Q") nil) ; Meta+p Q
(global-set-key (kbd "M-p Q") 'delete-other-windows) ; Meta+p Q
;; rename buffer
(global-set-key (kbd "M-p A") nil) ; Meta+p A
(global-set-key (kbd "M-p A") 'rename-buffer) ; Meta+p A
;; buffer list
(global-set-key (kbd "M-p \"") nil) ; Meta+p "
(global-set-key (kbd "M-p \"") 'buffer-menu) ; Meta+p "
;; close current buffer
(global-set-key (kbd "M-p w") nil) ; Meta+p w
(global-set-key (kbd "M-p w") 'kill-buffer) ; Meta+p w
;; close other buffers
(global-set-key (kbd "M-p W") nil) ; Meta+p W
(global-set-key (kbd "M-p W") 'init-custom-fn-kill-other-buffers) ; Meta+p W
;; expand zencoding
(global-set-key (kbd "M-p M-p") nil) ; Meta+p Meta+p
(global-set-key (kbd "M-p M-p") 'zencoding-expand-yas) ; Meta+p Meta+p


;;; provide init-custom-keys
(provide 'init-custom-keys)