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

(setq cursor-type 'bar)

(provide 'custom)
