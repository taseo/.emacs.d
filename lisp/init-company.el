;;----------------------------------------------------------------------------
;; configure company mode
;;----------------------------------------------------------------------------

(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)

; web-mode related company mode backends

(add-hook 'web-mode-hook (lambda ()
			   (set (make-local-variable 'company-backends) '(company-tern))
			   (company-mode)))

;;----------------------------------------------------------------------------
;; provide company mode configuration
;;----------------------------------------------------------------------------

(provide 'init-company)