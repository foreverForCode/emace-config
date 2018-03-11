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

(set-face-attribute
 'default nil :font "Monaco 14")
;; Chinese Font 配制中文字体
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Kaiti SC" :size 14)))
;; Note: you can chang "Kaiti SC" to "Microsoft YaHei" or other fonts

;; ---Kaiti SC" to "Microsoft YaHei" or other fonts  

(provide 'init-ui)

