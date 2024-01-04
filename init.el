;; Emacs configuration (.emacs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(neotree react-snippets typescript-mode evil auto-complete))
 '(tab-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 120 :width normal)))))

(require 'package)
(add-to-list 'package-archives
		 '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)
;; relative line numbering
;; (display-line-numbers-mode)
;; (setq display-line-numbers 'relative)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

(ac-config-default)

;; To disable the scrollbar, use the following line:
(scroll-bar-mode -1)

;; To disable the toolbar, use the following line:
(tool-bar-mode -1)

; stop creating ~ files
(setq make-backup-files nil)

;; stop emacs from creating new buffer for each navigation in dired
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-omit-verbose nil)

;; neotree - file manager
;; (require 'neotree)
;; (global-set-key [f8] 'neotree-toggle)


;; to stop initial buffer to start
(setq inhibit-startup-message t) ; Disable startup message
(setq initial-buffer-choice nil) ; Don't show initial buffer


;; tab bar
(tab-bar-mode 1)


;; adding transparency
(add-to-list 'default-frame-alist '(alpha 95 90))
