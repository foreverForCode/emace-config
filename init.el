
;; resove open-file error

(require 'package)

(package-initialize)


;; 不显示GNU emacs启动界面

(setq inhibit-startup-message t)

;; 关闭光标样式

(setq-default cursor-type 'bar)


;; 不显示菜单栏

(menu-bar-mode 0)

;; 不显示工具栏

(tool-bar-mode 0)

;; 不显示滚动条

(scroll-bar-mode 0)

;; 设置tab为4个空格的宽度

(setq default-tab-width 4)

;; 设置字体和字体大小

(set-default-font "Consolas-14")





;;=====================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; package management
;;-------------------------------

(require 'init-packages)

(require 'init-keybinds)

(require 'mode-manage)

(require 'init-better-default)

(require 'init-org)
