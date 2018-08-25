;;----------------------------------------------------------------------------
;; configure irony mode
;;----------------------------------------------------------------------------

(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;;----------------------------------------------------------------------------
;; provide irony mode configuration
;;----------------------------------------------------------------------------

(provide 'init-irony)