
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

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))


;; install web-mode
(add-to-list 'load-path "~/.emacs.d/elpa/web-mode-20171118.1132/web-mode.el")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; install company-lua

(add-to-list 'load-path "~/.emacs.d/elpa/company-lua-20171108.1506/company-lua.el")

(require 'company)
(require 'company-lua)

;; install nginx-mode

(add-to-list 'load-path "~/.emacs.d/elpa/nginx-mode-20170611.2137/nginx-mode.el")

(require 'nginx-mode)

;; install auto-complete

(ac-config-default)

;; install ac-js2

(add-hook 'js2-mode-hook 'ac-js2-mode)

;;快速打开配置文件

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs")
)

;; 将函数绑定在F2

(global-set-key (kbd "<f2>") 'open-init-file)

;; 全局激活 company补全
(global-company-mode 1)
