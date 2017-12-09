;; ��ֹ�����ļ�

(setq make-backup-files nil)
;;�Զ�ƥ��ո�


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; ��ʾ��ǰ��

(global-hl-line-mode t)

;; close ring

(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

;; ����Ĭ��������ʾ�к�

(global-linum-mode t)

(abbrev-mode t)

(define-abbrev-table 'global-abbrev-table
  '(
	("jo" "jorden")
	))
(setq make-backup-file nil)

(setq auto-save-default nil)
(recentf-mode 1)

(setq recenf-max-menu-items 25)

;; �Զ�����
(electric-indent-mode t)

;; delete
(delete-selection-mode t)

;; ȫ�ּ��� company��ȫ
(global-company-mode 1)

;; cua-mode

(cua-mode t)

;; �� y-or-n-p �滻 yes-or-no

(fset 'yes-or-no-p 'y-or-n-p)


;; �����﷨����

(global-font-lock-mode 1)

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max))
  )

(defun indent-region-or-buffer ()
  (interactive)
  (if (region-active-p)
	  (progn
		(indent-region (region-beginning) (region-end)))
	(progn
	  (indent-buffer)
	  (message "indented buffer"))))

;; ֱ�ӵݹ�ɾ�� ���� ������ʾ

(setq dired-recursive-deletes 'always)

(setq dired-recursive-copies 'always)

;; ���� buffer
(put 'dired-find-alternate-file 'disabled nil)

(require 'dired)

(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

(setq dired-dwim-target t)

;; remove dos-el

(defun hidden-dos-eol()
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun remove-dos-eol ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(provide 'init-better-default)









