;;----------------------------------------------------------------------------
;; configure tern
;;----------------------------------------------------------------------------

(autoload 'tern-mode "tern.el" nil t)

(add-hook 'web-mode-hook (lambda () (tern-mode t)))

;;----------------------------------------------------------------------------
;; provide tern configuration
;;----------------------------------------------------------------------------

(provide 'init-tern)