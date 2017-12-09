;;快速打开配置文件

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
)

;; 将函数绑定在F2

(global-set-key (kbd "<f2>") 'open-init-file)

;; use counsel swipe
(ivy-mode 1)

(setq ivy-use-virtual-buffers t)

(global-set-key "\C-s" 'swiper)

(global-set-key (kbd "C-c C-r") 'ivy-resume)

(global-set-key (kbd "<f6>") 'ivy-resume)

(global-set-key (kbd "M-x") 'counsel-M-x)

(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "<f1> f") 'counsel-describe-function)

(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

(provide 'init-keybinds)
