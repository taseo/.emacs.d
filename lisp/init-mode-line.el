;;----------------------------------------------------------------------------
;; configure smart mode line
;;----------------------------------------------------------------------------

(require 'smart-mode-line)

(setq sml/no-confirm-load-theme t)
(setq sml/theme 'dark)

(sml/setup)

(setq sml/name-width 40)
(setq sml/mode-width 'full)
(setq sml/shorten-directory t)
(setq sml/shorten-modes t)

(add-to-list 'sml/replacer-regexp-list '("^~/Sandbox/" ":SBox:"))

;;----------------------------------------------------------------------------
;; provide mode line configuration
;;----------------------------------------------------------------------------

(provide 'init-mode-line)