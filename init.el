
;; resove open-file error

(require 'package)

(package-initialize)


;; ����ʾGNU emacs��������

(setq inhibit-startup-message t)

;; �رչ����ʽ

(setq-default cursor-type 'bar)


;; ����ʾ�˵���

(menu-bar-mode 0)

;; ����ʾ������

(tool-bar-mode 0)

;; ����ʾ������

(scroll-bar-mode 0)

;; ����tabΪ4���ո�Ŀ��

(setq default-tab-width 4)

;; ��������������С

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
