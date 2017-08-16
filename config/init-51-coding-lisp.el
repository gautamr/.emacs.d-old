;;; init-42-coding-lisp.el --- Code for Clojure programming

;; Copyright (C) 2017 Gautam Roy

;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, lisp
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; lisp mode, ebale eldoc

;;; Code:

(use-package lisp-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  ;;(define-key emacs-lisp-mode-map (kbd "C-c C-z") #'bozhidar-visit-ielm)
  ;;(define-key emacs-lisp-mode-map (kbd "C-c C-c") #'eval-defun)
  ;;(define-key emacs-lisp-mode-map (kbd "C-c C-b") #'eval-buffer)
  (add-hook 'lisp-interaction-mode-hook #'eldoc-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'eldoc-mode))