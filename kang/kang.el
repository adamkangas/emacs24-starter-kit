(require 'paredit)
(require 'auto-complete)
(require 'auto-complete-config)

(auto-complete-mode)
(ac-config-default)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(set-default 'ac-sources '(ac-source-dictionary ac-source-words-in-buffer ac-source-yasnippet ac-source-words-in-all-buffer))

(global-set-key "\M-[5~" 'scroll-down)
(global-set-key "\M-[6~" 'scroll-up)
(global-set-key (kbd "C-M-?") 'describe-key)
(global-set-key (kbd "C-t") 'find-tag)
(global-set-key (kbd "C-M-]") 'shell)

;; zap-UP-to-char
(defadvice zap-to-char (after my-zap-to-char-advice (arg char) activate)
  "Kill up to the ARG'th occurence of CHAR, and leave CHAR.
  The CHAR is replaced and the point is put before CHAR."
  (insert char)
  (forward-char -1))

(starter-kit-load "org")
;;(starter-kit-load "g-client")
(starter-kit-load "js")
(starter-kit-load "lisp")
(starter-kit-load "misc-recommended")
(starter-kit-load "ruby")
(require 'ruby-electric)

(color-theme-blackboard)
(column-number-mode t)

;; SCSS
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))

(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

