;;; init-52-coding-clojure.el --- Code for Clojure programming
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, clj-refactor, cider
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; clojure mode and cider configuration

;;; Code:

(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))
  
(use-package clj-refactor
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'clj-refactor-mode))

;; Install and configure Cider
(use-package cider
  :ensure t
  :config
  (setq cider-pprint-fn 'fipp) ; fastest pretty printing
  (setq cider-repl-pretty-print-width 100)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode))

;; https://github.com/clojure-emacs/cider/issues/442
;; Use ac-nrepl-popup-doc to show in-line docs in a clojure buffer
;;(evabl-after-load "cider"
;;  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

;; Use ac-nrepl-popup-doc to show in-line docs in an nrepl buffer
;;(eval-after-load "cider"
;;  '(define-key cider-repl-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))
