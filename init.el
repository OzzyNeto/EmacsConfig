(require 'package)                   ; Bring in to the environment all package management functions


;; A list of package repositories
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org"   . "https://orgmode.org/elpa/")
                         ("elpa"  . "https://elpa.gnu.org/packages/")))

(package-initialize)                 ; Initializes the package system and prepares it to be used

(unless package-archive-contents     ; Unless a package archive already exists,
  (package-refresh-contents))        ; Refresh package contents so that Emacs knows which packages to load


;; Initialize use-package on non-linux platforms
(unless (package-installed-p 'use-package)        ; Unless "use-package" is installed, install "use-package"
  (package-install 'use-package))

(require 'use-package)                            ; Once it's installed, we load it using require
(setq use-package-always-ensure t)                ; :ensure t automatically

;; Make sure packages are downloaded and installed before they are run
;; also frees you from having to put :ensure t after installing EVERY PACKAGE.
(setq use-package-always-ensure t)


;; Org babel setup literate config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "67f6b0de6f60890db4c799b50c0670545c4234f179f03e757db5d95e99bac332" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561" "a53c7ff4570e23d7c5833cd342c461684aa55ddba09b7788d6ae70e7645c12b4" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "41ea21990080fd4ad58a26782f60b931df114de50b022eb9e0aee3e263cfe8d9" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "aba604459ca0aa20924c905566595726fdcc5a459db0e9c95745a9d41bde97b8" "5a1b32e01cf9684d0407accae12140c56984439e8f29a8e0a5507fa3e06ded3a" "0aca40574908fd0b1470fc8586366680b8393667e1bf02ec8c493cbeb969d92b" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "4dee873ce3b324cf3402972acab098d57429991c63f353b5c2fa992fabc657e6" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" default))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(eglot org-pdftools pdf-tools flymake-flycheck dante haskell-mode consult-yasnippet move-text cape corfu-doc kind-icon corfu all-the-icons-ibuffer doom-modeline tree-sitter-langs tree-sitter nord-theme vscode-dark-plus-theme dired-subtree minions vertico embark-consult embark yasnippet-snippets yasnippet helpful magit all-the-icons-dired general orderless all-the-icons-completion all-the-icons sudo-edit hungry-delete switch-window avy doom-themes marginalia rainbow-delimiters which-key vterm use-package org-superstar gruvbox-theme ef-themes))
 '(tab-always-indent 'complete))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tree-sitter-hl-face:type.builtin ((t (:inherit font-lock-keyword-face)))))
(put 'upcase-region 'disabled nil)
