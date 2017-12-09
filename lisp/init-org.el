;;  π”√org
(require 'org)

(require 'org-agenda)

(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))

(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)
