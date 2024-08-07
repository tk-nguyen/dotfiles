;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Thai Nguyen"
      user-mail-address "shiroemon279@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "JuliaMono" :size 14)
      doom-variable-pitch-font (font-spec :family "Asap" :size 14)
      doom-symbol-font doom-font)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)
(setq doom-themes-treemacs-theme "doom-colors")

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/work-stuff/notes")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Copy paste madness
(use-package! simpleclip
  :config
  (simpleclip-mode 1))

(after! lsp-mode
  (setq! lsp-ui-doc-show-with-cursor 't)
  ;; (setq lsp-terraform-server '("terraform-ls" "serve"))
  ;; (setq lsp-semantic-tokens-enable t)
  ;; (setq lsp-semantic-tokens-honor-refresh-requests t)
  (setq! lsp-headerline-breadcrumb-enable 't))

(after! rustic
  (setq! lsp-inlay-hints-mode 't)
  (setq! lsp-inlay-hint-enable 't)
  (setq! lsp-rust-analyzer-proc-macro-enable 't))

(setq! poetry-tracking-strategy 'switch-buffer)
(setq! org-html-checkbox-type 'html)

;; Diff the doom configs with the example
(defun doom/ediff-init-and-example ()
  "ediff the current `init.el' with the example in doom-emacs-dir"
  (interactive)
  (ediff-files (concat doom-user-dir "init.el")
               (concat doom-emacs-dir "templates/" "init.example.el")))

(define-key! help-map
  "di"   #'doom/ediff-init-and-example
  )

;; Run lsp after GFM mode
(add-hook 'gfm-mode-local-vars-hook #'lsp!)

;; Use go language for tpl files
(after! web-mode
  (add-to-list 'web-mode-engines-alist
               '("go" . "\\.tpl\\'")))

;; Magit with delta
(use-package! magit-delta
  :hook (magit-mode . magit-delta-mode))

;; Auto refresh buffer when files changed on disk
(global-auto-revert-mode t)

;; Auto refresh magit buffer when a file buffer is saved
(after! magit
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t))

(setq! flycheck-python-ruff-executable "ruff")

;; Better auto save
(use-package! super-save
  :config
  (super-save-mode +1)
  (setq! super-save-auto-save-when-idle t)
  (setq! auto-save-default nil))

