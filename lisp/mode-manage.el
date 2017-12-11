

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



;; สนำร recenf

(require 'recentf)


(require 'popwin)

(popwin-mode t)

(require 'dired-x)

;; autopair-global-mode

(add-to-list 'load-path " ~/.emacs.d/elpa/autopair-20160304.437/autopair.el")

(require 'autopair)

(autopair-global-mode)

;; add emmet-mode

(add-to-list 'load-path " ~/.emacs.d/elpa/emmet-mode-20161113.2158/emmet-mode.el")

(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'js-mode-hook  'emmet-mode)
(add-hook 'js-mode-hook 'js2-mode)

(require 'expand-region)

(provide 'mode-manage)
