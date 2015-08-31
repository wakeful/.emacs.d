;;; init-custom-functions


;; init-custom-fn-ensure-install
(defun init-custom-fn-ensure-install (name)
  "Install missing package."
  (unless (package-installed-p name)
    (package-install name)))
;; init-custom-fn-kill-other-buffers
(defun init-custom-fn-kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))
;; init-custom-fn-new-empty-buffer
(defun init-custom-fn-new-empty-buffer ()
  "Create new empty buffer."
  (interactive)
  (let ((buf (generate-new-buffer "untitled-buff")))
    (switch-to-buffer buf)
    (funcall (and initial-major-mode))
    (setq buffer-offer-save t)))
;; init-custom-fn-new-shell
(defadvice shell (around init-custom-fn-new-shell)
  "Create new clean shell."
  (let ((buffer (generate-new-buffer-name "*TERM*"))) 
    ad-do-it))


;;; provide init-custom-functions
(provide 'init-custom-functions)