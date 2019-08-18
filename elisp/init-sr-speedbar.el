;;; init-sr-speedbar --- speedbar configuration

(require 'sr-speedbar)



(setq speedbar-use-images nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-right-side nil)



(global-set-key [f8] 'sr-speedbar-toggle)



(provide 'init-sr-speedbar)
