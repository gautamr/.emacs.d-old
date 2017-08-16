;;; init-10-face.el --- Customize the look and feel of emacs

;; Copyright (C) 2017 Gautam Roy

;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, face, zenburn, Monaco font
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; Zenburn theme; default font is set to 'monaco'

;;; Code:

;; Disable menu bars, etc.
(if window-system (scroll-bar-mode -1))
(tool-bar-mode -1)
(menu-bar-mode -1)

;; line number for every line
(global-linum-mode t)

;; default font face. This might be tricky if you are using Windows.
;; Make sure that Monaco font is installed in your machine.
;; You can find Monacohere: https://github.com/todylu/monaco.ttf
;; verify using M-x list-faces-display
(set-default-font "Monaco")

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; use zenburn theme
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn))

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))
