;;----------------------------------------------------------------------------
;; configure neotree
;;----------------------------------------------------------------------------

(require 'neotree)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)
(setq-default neo-show-hidden-files t)

(global-set-key [f8] 'neotree-toggle)

;;----------------------------------------------------------------------------
;; load icons for neotree
;;----------------------------------------------------------------------------

(require 'all-the-icons)

;;----------------------------------------------------------------------------
;; provide neotree configuration
;;----------------------------------------------------------------------------

(provide 'init-neotree)