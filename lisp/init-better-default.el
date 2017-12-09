;; 禁止备份文件

(setq make-backup-files nil)
;;自动匹配空格

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 显示当前行

(global-hl-line-mode t)

;; close ring

(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

;; 启动默认设置显示行号

(global-linum-mode t)

(abbrev-mode t)

(define-abbrev-table 'global-abbrev-table
  '(
	("jo" "jorden")
	))
(setq make-backup-file nil)

(setq auto-save-default nil)
(recentf-mode 1)

(setq recenf-max-menu-items 25)

;; 自动缩进
(electric-indent-mode t)

;; delete
(delete-selection-mode t)

;; 全局激活 company补全
(global-company-mode 1)

;; cua-mode

(cua-mode t)

;; 用 y-or-n-p 替换 yes-or-no

(fset 'yes-or-no-p 'y-or-n-p)


;; 开启语法高亮

(global-font-lock-mode 1)

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max))
  )

(defun indent-region-or-buffer ()
  (interactive)
  (if (region-active-p)
	  (progn
		(indent-region (region-beginning) (region-end)))
	(progn
	  (indent-buffer)
	  (message "indented buffer"))))

(provide 'init-better-default)









