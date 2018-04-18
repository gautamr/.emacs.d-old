;; https://github.com/proneetv/emacs.d/blob/master/elisp/haskell-init.el  
;;(use-package flycheck-haskell
;;  :ensure t
;;  :config
;;  (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
;;  )

;; https://github.com/cocreature/dotfiles/blob/master/emacs/.emacs.d/emacs.org
(use-package intero
  :ensure t
  :pin melpa-stable
  :commands (intero-global-mode intero-mode intero-mode-maybe)
  ;;:config
  ;;(setq intero-blacklist
  ;;     '("/home/moritz/code/haskell/bytestring"
  ;;        "/home/moritz/code/haskell/cabal"
  ;;        "/home/moritz/code/haskell/ghc"
  ;;        "/home/moritz/code/haskell/llvm-hs"
  ;;        "/home/moritz/code/haskell/miso"
  ;;        "/home/moritz/code/haskell/ghcjs"))
  :init
  (progn
    (intero-global-mode 1)))
	
(use-package dante
  :ensure t
  :disabled t
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'dante-mode))
  
(use-package hindent
  ;;:load-path "~/code/haskell/hindent/elisp"
  :ensure t
  :commands (hindent-reformat-decl hindent-mode)
  :init
  (add-hook 'haskell-mode-hook 'hindent-mode))
  
(use-package haskell-mode
  :ensure t
  :mode (("\\.c?hs\\'" . haskell-mode)
         ("\\.cabal\\'" . haskell-cabal-mode))
  :diminish " λ"
  :config
  (progn
    (use-package haskell)
    (use-package haskell-doc)
    (use-package haskell-decl-scan)
    (setq haskell-process-log t)
    (setq haskell-process-type 'stack-ghci)))
	
;;(setq flycheck-hlint-ignore-rules '("Eta reduce" "Use String"))