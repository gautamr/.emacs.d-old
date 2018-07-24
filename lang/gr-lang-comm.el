;;; init-50-coding-common.el --- Code for general programming
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, company, magit, git, flycheck
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; General tools for programming across languages.  This consists of:
;; Company :: used for code completion
;; Projectile :: used for searching projects
;; Magit :: used for interfacing with git/github
;; Flycheck :: code syntax/convention checking

;;; Code:

(use-package paren
  :config
  (show-paren-mode +1))
  
(use-package rainbow-delimiters
  :ensure t)

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))  

;; Install the Git frontend Magit 
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))
  
;; Install code completion and enable it globally
(use-package company
  :ensure t
  :diminish " ☭"
  :config
  (global-company-mode))

;; Documentation popups for Company
(use-package company-quickhelp
  :ensure t
  ;;:init (add-hook 'global-company-mode-hook #'company-quickhelp-mode)
  :config
  (company-quickhelp-mode 1))
  
;; Install paredit, enable in elisp and Clojure modes
;;(use-package paredit
;;  :ensure t
;;  :config
;;  (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
;;  (add-hook 'clojure-mode-hook #'enable-paredit-mode))

;; lets try smartparens instead of paredit
;; https://github.com/jabranham/emacs-for-social-science/blob/master/init-emacs.org
(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config)
  (smartparens-global-mode)
  (show-smartparens-global-mode))  

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
  
;;(use-package CS-mode
;;  :ensure t
;;  :pin "gnu")

;; provide common configuration for all languages
(provide 'gr-lang-comm)
;;; gr-lang-comm.el ends here
