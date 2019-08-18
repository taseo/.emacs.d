;;; init-generic.el --- generic configuration

(delete-selection-mode 1)



(defalias 'yes-or-no-p 'y-or-n-p)



(global-set-key (kbd "C-x C-b") 'ibuffer)



(provide 'init-generic)
