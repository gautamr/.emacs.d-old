;;; init-20-nav.el --- Customize navigation of emacs
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, navigation, avy
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; Navigation configuration: avy

;;; Code:

(use-package avy
  :ensure t
  ;;:bind (("s-." . avy-goto-word-or-subword-1)
  ;;       ("s-," . avy-goto-char))
  :config
  (setq avy-background t))