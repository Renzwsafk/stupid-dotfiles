;; -*- lexical-binding: t; -*-
(use-package tab-line
  :ensure nil
  :config
  (global-tab-line-mode 1)
  :bind
  (("C-<tab>" . tab-line-switch-to-next-tab)
   ("C-<iso-lefttab>" . tab-line-switch-to-prev-tab)))

(global-display-line-numbers-mode 1)
(global-font-lock-mode 1)
(setq display-line-numbers-type 'relative)
