;;; init-20-common.el --- Customize navigation of emacs

;; Copyright (C) 2017 Gautam Roy

;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, navigation, avy
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; Navigation configuration: avy

;;; Code:

;; https://github.com/manugoyal/.emacs.d
;; https://github.com/d12frosted/flyspell-correct

;; http://aspell.net/win32/
;; https://stackoverflow.com/questions/17126951/emacs-cannot-find-flyspell-ispell

(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))

(use-package flyspell
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'flyspell-prog-mode)
    (add-hook 'text-mode-hook 'flyspell-mode)
	(add-hook 'markdown-mode-hook 'flyspell-mode)
    )
  ;;:config
  ;; Sets flyspell correction to use two-finger mouse click
  ;;(define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
  )

(use-package flyspell-correct-popup
  :ensure t
  :commands (flyspell-correct-popup)
  :init
  (setq flyspell-correct-interface #'flyspell-correct-popup))
	
(use-package flyspell-popup
  :ensure t
  :defer t
  :init
  (progn
    (setq flyspell-popup-correct-delay 0.8)
    (add-hook 'flyspell-mode-hook #'flyspell-popup-auto-correct-mode)))
