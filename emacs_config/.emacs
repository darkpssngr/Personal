;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;Shreyas's Emacs Configuration file


;;Imp work
(load-file "~/.emacs.d/init.elc")

;;Global Key settings
(global-unset-key (kbd "C-x C-b"))
(global-set-key (kbd "M-n") 'goto-line) ; Goto Line using Alt-n
(global-set-key (kbd "C-c c") 'comment-region) ;comment region 
(global-set-key (kbd "C-c u") 'uncomment-region) ;uncomment region 
(global-set-key (kbd "C-c f n") 'flymake-goto-next-error) ;comment region
(global-set-key (kbd "C-c f p") 'flymake-goto-prev-error) ;comment region 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(c-basic-offset 2)
 '(case-fold-search t)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(css-indent-offset 2)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(current-language-environment "UTF-8")
 '(default-input-method "latin-1-prefix")
 '(delete-selection-mode nil)
 '(fci-rule-color "#073642")
 '(fill-column 80)
 '(font-lock-maximum-size 512000)
 '(global-font-lock-mode t nil (font-lock))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(indent-tabs-mode nil)
 '(js-curly-indent-offset 0)
 '(js-indent-level 2)
 '(jshint-configuration-path "~/jshintrc.json")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (flymake-cursor enh-ruby-mode git scala-mode2 ruby-mode phi-search php-mode yaml-mode web-mode scss-mode rvm rspec-mode robe projectile-rails go-mode flymake-ruby flx-ido discover color-theme ac-emmet)))
 '(paren-mode (quote paren) nil (paren))
 '(phi-search-case-sensitive (quote guess))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(show-paren-mode t nil (paren))
 '(show-trailing-whitespace t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(tab-stop-list
   (quote
    (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96)))
 '(tab-width 2)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(transient-mark-mode t)
 '(user-mail-address "shreyas.ns@freshdesk.com")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c37300")
     (60 . "#b97d00")
     (80 . "#b58900")
     (100 . "#a18700")
     (120 . "#9b8700")
     (140 . "#948700")
     (160 . "#8d8700")
     (180 . "#859900")
     (200 . "#5a942c")
     (220 . "#439b43")
     (240 . "#2da159")
     (260 . "#16a870")
     (280 . "#2aa198")
     (300 . "#009fa7")
     (320 . "#0097b7")
     (340 . "#008fc7")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(vc-follow-symlinks nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
;end---

;Custom Font faces and styling
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:size "8pt" :family "Lucida Sans Typewriter"))))
 '(underline ((t (:background "pink" :underline nil))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "selectedKnobColor")))))
;end--

;; Auto-Complete

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'scss-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(setq web-mode-ac-sources-alist
	  '(("css" . (ac-source-css-property))
		("html" . (ac-source-words-in-buffer ac-source-abbrev))))
;;end------

;Commenting and Uncommenting regions
(global-set-key "\C-cc" 'comment-region)
(global-set-key "\C-cu" 'uncomment-region)

;;Auto Indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;;Create eshell at the bottom of the editor and bind it to F5 key
(fset 'create-eshell-at-bottom
   "\C-x2\C-xo\C-[xesh\C-i\C-m\C-xo\C-x^\C-x^\C-x^\C-x^\C-x^\C-x^\C-x^\C-x^")
(global-set-key (kbd "<f5>") 'create-eshell-at-bottom)
;;end------

;;Sets a save place
(require 'saveplace)                          ;; get the package
(setq-default save-place t)                   ;; activate it for all buffers
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean

(defadvice save-place-alist-to-file
  (around save-place-alist-to-file-force-print-length activate)
  (let ((print-level nil)
        (print-length nil))
    ad-do-it))
;; end set save place

;;webmodes
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jade\\'" . js2-mode))
;; End of web mode

;;List and goto any function in the file
(defvar gotofunregex
  '((nil "^\\s-*\\(\\(def\\|class\\)\\s-+[-A-Za-z0-9_+]+\\)" 1)))

(defun display-ansi-colors ()
  (interactive)
	(ansi-color-apply-on-region (point-min) (point-max)))
(put 'narrow-to-region 'disabled nil)

(set-frame-font "Monaco")
(require 'phi-search)
(global-set-key (kbd "C-s") 'phi-search)
(global-set-key (kbd "C-r") 'phi-search-backward)


(defun my-web-mode-hook ()
  (setq web-mode-enable-auto-pairing nil)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  (setq js2-mode-indent-style 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)
(add-hook 'js2-mode-hook 'flymake-jshint-load)
(add-hook 'js-mode-hook 'flymake-jshint-load)

;PYTHON DJANGO SETUP
(require 'django-html-mode)
(require 'django-mode)
(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))
(add-hook 'django-mode-hook
          (lambda ()
            (define-key django-mode-map (kbd "M-.") 'django-jump)
            (define-key django-mode-map (kbd "C-c d m") 'django-manage)
            (define-key django-mode-map (kbd "C-c d q") 'django-test)
            (define-key django-mode-map (kbd "C-c d s") 'django-syncdb)
            (define-key django-mode-map (kbd "C-c d a") 'django-startapp)
            (define-key django-mode-map (kbd "C-c d v") 'django-jump-to-view)
            (define-key django-mode-map (kbd "C-c d m") 'django-jump-to-model)
            (define-key django-mode-map (kbd "C-c d t") 'django-jump-to-template)
            )
          )
