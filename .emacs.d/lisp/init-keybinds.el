;;快速打开配置文件

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
)

;; 将函数绑定在F2

(global-set-key (kbd "<f2>") 'open-init-file)


(provide 'init-keybinds)
