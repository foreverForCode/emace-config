
;; resove open-file error

(require 'package)

(package-initialize)
;;=====================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; package management
;;-------------------------------
(require 'unicad)

(require 'init-ui)

(require 'init-packages)

(require 'init-keybinds)

(require 'mode-manage)

(require 'init-better-default)

(require 'init-org)
