;;���ٴ������ļ�

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el")
)

;; ����������F2

(global-set-key (kbd "<f2>") 'open-init-file)


(provide 'init-keybinds)
