
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

;;���ٴ������ļ�

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs")
)

;; ����������F2

(global-set-key (kbd "<f2>") 'open-init-file)

;; ȫ�ּ��� company��ȫ
(global-company-mode 1)
