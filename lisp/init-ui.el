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

(set-face-attribute
 'default nil :font "Monaco 14")
;; Chinese Font ������������
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Kaiti SC" :size 14)))
;; Note: you can chang "Kaiti SC" to "Microsoft YaHei" or other fonts

;; ---Kaiti SC" to "Microsoft YaHei" or other fonts  

(provide 'init-ui)

