;;; init.el --- Gautam Roy's Emacs configuration
;;
;; Copyright (c) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: convenience, configuration

;; This file is not part of GNU Emacs.

;;; Commentary:
;; This is my personal Emacs configuration.  Nothing more, nothing less.

;;; License:
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code inspired by:
;; https://github.com/bbatsov/emacs.d
;; https://github.com/gjstein/emacs.d/blob/master/init.el
;; http://stackoverflow.com/a/10093312/3672986
;; http://www.lunaryorn.com/2015/01/06/my-emacs-configuration-with-use-package.html
;; https://github.com/jwiegley/use-package
;; https://gitlab.com/buildfunthings/emacs-config/blob/master/loader.org
;; http://pages.sachachua.com/.emacs.d/Sacha.html

;;; Code:

;; User Info
(setq user-full-name "Gautam Roy")
(setq user-mail-address "gautam.2005@gmail.com")

;; Always load newest byte code
(setq load-prefer-newer t)

(require 'package)

(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("elpy" . "http://jorgenschaefer.github.io/packages/")))
						 
(setq package-archive-priorities
      '(("melpa-stable" . 30)
        ("marmalade" . 20)
        ("elpy" . 15)
        ("gnu" . 10)))
						 
(package-initialize)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
  
;; Enable use-package
(require 'use-package)
(setq use-package-verbose t)

;;(require 'diminish)  ;; if you use :diminish
;;(require 'bind-key)  ;; if you use any :bind variant

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; auto update packages
(use-package auto-package-update
   :ensure t
   :pin "melpa-stable"
   :config
   (setq auto-package-update-delete-old-versions t
         auto-package-update-interval 4)
   (auto-package-update-maybe))

;; === Face Customization ===
(load-file "~/.emacs.d/config/init-10-face.el")

;;(load-file "~/.emacs.d/config/init-11-nav.el")

(load-file "~/.emacs.d/config/init-30-common.el")

(load-file "~/.emacs.d/config/init-50-coding-common.el")

;;(load-file "~/.emacs.d/config/init-51-coding-lisp.el")

(load-file "~/.emacs.d/config/init-52-coding-clojure.el")

(load-file "~/.emacs.d/config/init-53-coding-python.el")

(load-file "~/.emacs.d/config/init-54-coding-ess.el")