;;; init-company.el --- company configuration

(require 'company)



(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends '(company-c-headers company-irony))) 



(provide 'init-company)
