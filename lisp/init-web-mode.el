;;----------------------------------------------------------------------------
;; configure web-mode
;;----------------------------------------------------------------------------

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

(defun custom-web-mode-hook ()

  "Web-mode hooks."

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook  'custom-web-mode-hook)

;;----------------------------------------------------------------------------
;; provide web-mode configuration
;;----------------------------------------------------------------------------

(provide 'init-web-mode)