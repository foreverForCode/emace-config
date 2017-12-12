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

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "<f3>") 'indent-region-or-buffer)

(global-set-key (kbd "C-h C-f") 'find-function)

(global-set-key (kbd "C-h C-v") 'find-variable)

(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "M-s e") 'iedit-mode)

(global-set-key (kbd "M-s i") 'counsel-imenu)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "M-s r") 'rename-buffer)

(global-set-key (kbd "M-s h") 'global-font-lock-mode)

(provide 'init-keybinds)
