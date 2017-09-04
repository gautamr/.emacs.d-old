;;; init-54-coding-ess.el --- Code for statistical programming
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, ess, R, Julia
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; configuration, R

;;; Ensure
;; R should be insttaled properlly and should be present in "Path"

;;; Code

(use-package ess-site
  :ensure ess
  :config
  (setq-default inferior-R-program-name "R"))