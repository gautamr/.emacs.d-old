;;; init-53-coding-python.el --- Code for python programming
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, python, elpy, ein
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; python, elpy mode and configuration
;; https://github.com/gjstein/emacs.d/blob/master/config/init-44-coding-python.el
;; http://people.duke.edu/~aql3/emacs-there-and-back-again/
;; https://github.com/correl/dotfiles/blob/master/.emacs.d/emacs.org
;; http://tkf.github.io/emacs-jedi/latest/
;; https://github.com/syohex/emacs-company-jedi/wiki
;; https://github.com/tkf/emacs-python-environment
;; https://www.reddit.com/r/emacs/comments/6gr62f/accidentally_removed_pythonenvironmentdirectory/
;; (python-environment-make-block jedi:environment-root)

;;; Ensure:
;; pip install elpy
;; pip install virtualenv
;; pip install jedi
;; pip install flake8
;; pip install importmagic
;; pip install autopep8
;; pip install yapf;
;; http://www.tornadoweb.org/en/stable/
;; pip install tornado

;; my system cannt install jedi-server autometically, so need to install it
;; M-x jedi:install-server

;;; Code

(use-package company-jedi
  :ensure t
  :config
  ;;(add-hook 'python-mode-hook 'jedi:setup) ;this is creating unusual behavior in my Windows 7 laptop 
  (setq jedi:environment-virtualenv (list (expand-file-name "~/.emacs.d/.python-environments/")))
  
  (defun my/python-mode-hook ()
    (add-to-list 'company-backends 'company-jedi))
  (add-hook 'python-mode-hook 'my/python-mode-hook))
	
(use-package elpy
  :ensure t
  :pin "elpy"
  :after python
  :config
  (setq elpy-rpc-backend "jedi")
  (elpy-enable)
  (elpy-use-ipython))
  
(use-package ein
  :ensure t
  :pin "melpa-stable"
  :commands (ein:notebooklist-open))
