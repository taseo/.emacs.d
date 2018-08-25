;;----------------------------------------------------------------------------
;; configure company mode
;;----------------------------------------------------------------------------

(require 'company)

(setq company-idle-delay .3)
(setq company-tooltip-align-annotations t)

(with-eval-after-load 'company
  (add-hook 'c-mode-hook 'company-mode)
  (add-hook 'c++-mode-hook 'company-mode)
  (add-hook 'web-mode-hook 'company-mode))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; set auto-completion for C/C++ headers
(add-to-list 'company-backends 'company-c-headers)

;;----------------------------------------------------------------------------
;; provide company mode configuration
;;----------------------------------------------------------------------------

(provide 'init-company)