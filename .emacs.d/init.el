
;; resove open-file error

(require 'package)

(package-initialize)


;; 不显示GNU emacs启动界面

(setq inhibit-startup-message t)

;; 用 y-or-n-p 替换 yes-or-no

(fset 'yes-or-no-p 'y-or-n-p)

;; 不显示菜单栏

(menu-bar-mode 0)

;; 不显示工具栏

(tool-bar-mode 0)

;; 不显示滚动条

(scroll-bar-mode 0)

;; 启动默认设置显示行号

(global-linum-mode t) 

;; 设置tab为4个空格的宽度

(setq default-tab-width 4)

;; 开启语法高亮

(global-font-lock-mode 1)

;; 设置字体和字体大小

(set-default-font "Consolas-14")
;; cua-mode

(cua-mode t)

;; 全局激活 company补全
(global-company-mode 1)

;; 关闭光标样式

(setq-default cursor-type 'bar)

;; 禁止备份文件

(setq make-backup-files nil)

;; 使用org
(require 'org)

(setq org-src-fontify-natively t)

;; 使用 recenf

(require 'recentf)

(recentf-mode 1)

(setq recenf-max-menu-items 25)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 自动缩进
(electric-indent-mode t)

;; delete
(delete-selection-mode t)
;;自动匹配空格

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 显示当前行

(global-hl-line-mode t)



;;=====================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; package management
;;-------------------------------

(require 'init-packages)

(require 'init-keybinds)

(require 'mode-manage)


