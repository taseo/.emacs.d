;;----------------------------------------------------------------------------
;; configure company mode
;;----------------------------------------------------------------------------

(require 'company)

(setq company-idle-delay .3)
(setq company-tooltip-align-annotations t)

(add-hook 'after-init-hook 'global-company-mode)

;;----------------------------------------------------------------------------
;; provide company mode configuration
;;----------------------------------------------------------------------------

(provide 'init-company)