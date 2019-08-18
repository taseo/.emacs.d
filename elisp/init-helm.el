;;; init-helm.el --- helm configuration

(require 'helm)
(require 'helm-config)



;; open helm buffer inside current window, not occupy whole other window
(setq helm-split-window-in-side-p t)

(setq helm-autoresize-max-height 40)
(setq helm-autoresize-min-height 40)
(helm-autoresize-mode 1)



;; rebind tab to run persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; make TAB work in terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
;; list actions using C-z
(define-key helm-map (kbd "C-z")  'helm-select-action)



(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)



(helm-mode 1)



(provide 'init-helm)
