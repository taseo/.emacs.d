;;; init-gui.el --- generic UI adjustments

;; set theme
(load-theme 'zenburn t)



;; remove initial (splash) screen
(setq inhibit-splash-screen t
      initial-scratch-message nil)



;; load maximized frame on start-up
(add-to-list 'default-frame-alist '(fullscreen . maximized))



;; set font
(set-frame-font "Inconsolata 13" nil t)



;; remove scrollbar, toolbar and menubar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)



;; set cursor type
(set-default 'cursor-type 'bar)



;; remove sound notifications
(setq ring-bell-function 'ignore)



(provide 'init-gui)
