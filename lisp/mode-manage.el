

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

(load-theme 'monokai t)

(require 'hungry-delete)

(global-hungry-delete-mode)

;; use smartparens-global-mode

;;(require 'smartparens-config)

;;(smartparens-global-mode t)

(require 'nodejs-repl)

;; 使用org
(require 'org)

(setq org-src-fontify-natively t)

;; 使用 recenf

(require 'recentf)

(recentf-mode 1)

(setq recenf-max-menu-items 25)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)



(provide 'mode-manage)
