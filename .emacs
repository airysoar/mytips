;;替换默认配置
;;(load-file "D:/Project/emacs-24.3/.emacs")

;;改变默认路径
(setenv "HOME" "D:/Project/emacs-24.3/")
(setenv "PATH" "D:/Project/emacs-24.3/")
;;set the default file path
(setq default-directory "~/")

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("elpa" . "http://tromey.com/elpa/")
                        ))
(package-initialize)

;;evil-mode
(require 'evil)
(evil-mode 1)

;; Remap org-mode meta keys for convenience
;;(mapcar (lambda (state)
;;    (evil-declare-key state org-mode-map
;;      (kbd "M-l") 'org-metaright
;;      (kbd "M-h") 'org-metaleft
;;      (kbd "M-k") 'org-metaup
;;      (kbd "M-j") 'org-metadown
;;      (kbd "M-L") 'org-shiftmetaright
;;      (kbd "M-H") 'org-shiftmetaleft
;;      (kbd "M-K") 'org-shiftmetaup
;;      (kbd "M-J") 'org-shiftmetadown))
;;  '(normal insert))

(define-minor-mode evil-org-mode
"minor mode to add evil keymappings to Org-mode."
:keymap (make-sparse-keymap)
(evil-local-mode t))

; various commands mapped below
(evil-define-key 'normal evil-org-mode-map ",dd" 'org-deadline)
(evil-define-key 'normal evil-org-mode-map ",ds" 'org-schedule)
(evil-define-key 'normal evil-org-mode-map ",te" 'org-set-tags-command)
(evil-define-key 'normal evil-org-mode-map ",ts" 'org-todo)
(evil-define-key 'normal evil-org-mode-map ",r" 'org-refile)
(evil-define-key 'normal evil-org-mode-map ",c" 'org-capture)
(evil-define-key 'normal evil-org-mode-map ",ag" 'org-agenda)
(evil-define-key 'normal evil-org-mode-map "<<" 'org-promote-subtree)
(evil-define-key 'normal evil-org-mode-map ">>" 'org-demote-subtree)
(evil-define-key 'normal evil-org-mode-map ">." 'org-move-subtree-down)
(evil-define-key 'normal evil-org-mode-map "<," 'org-move-subtree-up)
(evil-define-key 'normal evil-org-mode-map "gj" 'org-forward-same-level)
(evil-define-key 'normal evil-org-mode-map "gk" 'org-backward-same-level)
(evil-define-key 'normal evil-org-mode-map "gh" 'outline-up-heading)
(evil-define-key 'normal evil-org-mode-map "gl" 'outline-next-visible-heading)
(evil-define-key 'normal evil-org-mode-map ",g" 'org-goto)
(evil-define-key 'normal evil-org-mode-map ",ex" 'org-export)
(evil-define-key 'normal evil-org-mode-map ",ns" 'org-narrow-to-subtree)
(evil-define-key 'normal evil-org-mode-map ",nw" 'widen)
(evil-define-key 'normal evil-org-mode-map [(return)]
'org-insert-heading-respect-content)

;;color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-robin-hood)

;;(set-default-font “Aeteye-14″)

;; -*- mode: lisp-interaction; coding: utf-8; -*-
;;(set-default-font "Courier New:pixelsize=14")
;;(set-fontset-font (frame-parameter nil 'font)
;;'han (font-spec :family "SimSun" :size 14))
;;(set-fontset-font (frame-parameter nil 'font)
;;'symbol (font-spec :family "SimSun" :size 14))
;;(set-fontset-font (frame-parameter nil 'font)
;;'cjk-misc (font-spec :family "SimSun" :size 14))
;;(set-fontset-font (frame-parameter nil 'font)
;;'bopomofo (font-spec :family "SimSun" :size 14))

;;(set-default-font "Aeteye:pixelsize=15")


;; Setting English Font
(set-face-attribute
'default nil :font "Monaco 12")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "Microsoft Yahei":size 16)))

