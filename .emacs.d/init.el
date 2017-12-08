
;; resove open-file error

(require 'package)

(package-initialize)


;; ����ʾGNU emacs��������

(setq inhibit-startup-message t)

;; �� y-or-n-p �滻 yes-or-no

(fset 'yes-or-no-p 'y-or-n-p)

;; ����ʾ�˵���

(menu-bar-mode 0)

;; ����ʾ������

(tool-bar-mode 0)

;; ����ʾ������

(scroll-bar-mode 0)

;; ����Ĭ��������ʾ�к�

(global-linum-mode t) 

;; ����tabΪ4���ո�Ŀ��

(setq default-tab-width 4)

;; �����﷨����

(global-font-lock-mode 1)

;; ��������������С

(set-default-font "Consolas-14")
;; cua-mode

(cua-mode t)

;; ȫ�ּ��� company��ȫ
(global-company-mode 1)

;; �رչ����ʽ

(setq-default cursor-type 'bar)

;; ��ֹ�����ļ�

(setq make-backup-files nil)

;; ʹ��org
(require 'org)

(setq org-src-fontify-natively t)

;; ʹ�� recenf

(require 'recentf)

(recentf-mode 1)

(setq recenf-max-menu-items 25)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; �Զ�����
(electric-indent-mode t)

;; delete
(delete-selection-mode t)
;;�Զ�ƥ��ո�

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; ��ʾ��ǰ��

(global-hl-line-mode t)



;;=====================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; package management
;;-------------------------------

(require 'init-packages)

(require 'init-keybinds)

(require 'mode-manage)


