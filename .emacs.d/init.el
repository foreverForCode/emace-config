
;; resove open-file error


(package-initialize)

;;=====================================================
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; package management
;;-------------------------------

(require 'init-packages)

(require 'custom)

(require 'init-keybinds)

(require 'mode-manage)
