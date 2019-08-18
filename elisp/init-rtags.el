;;; init-rtags --- rtags configuration

(dolist (hook (list
               'c-mode-hook
               'c++-mode-hook))
  (add-hook hook
            (lambda ()
              (require 'rtags)
              (require 'flycheck)
              (require 'flycheck-rtags)

              ;; run rtags daemon to provide tags request service
              (rtags-start-process-unless-running)

	      ;; flycheck setup
              (flycheck-mode)
	      
              (flycheck-select-checker 'rtags)
              (setq-local flycheck-highlighting-mode nil)
              (setq-local flycheck-check-syntax-automatically nil)

	      (define-key c-mode-base-map (kbd "M-.")
		(function rtags-find-symbol-at-point))
	      (define-key c-mode-base-map (kbd "M-,")
		(function rtags-find-references-at-point))

	      (rtags-enable-standard-keybindings)

	      (setq rtags-use-helm t)

	      (setq rtags-autostart-diagnostics t)
	      (rtags-diagnostics)
	      (setq rtags-completions-enabled t)
	      (push 'company-rtags company-backends)

	      ;; use rtags flycheck mode -- clang warnings shown inline
	      (require 'flycheck-rtags)

	      (add-hook 'c-mode-hook #'setup-flycheck-rtags)
	      (add-hook 'c++-mode-hook #'setup-flycheck-rtags)
              )))



(provide 'init-rtags)
