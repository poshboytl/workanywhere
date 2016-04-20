;;; init.el --- Spacemacs Initialization File
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Without this comment emacs25 adds (package-initialize) here
;; (package-initialize)

(setq gc-cons-threshold 100000000)
(defconst spacemacs-version         "0.105.18" "Spacemacs version.")
(defconst spacemacs-emacs-min-version   "24.3" "Minimal version of Emacs.")

(if (not (version<= spacemacs-emacs-min-version emacs-version))
    (message (concat "Your version of Emacs (%s) is too old. "
                     "Spacemacs requires Emacs version %d or above.")
             emacs-version spacemacs-emacs-min-version)
  (load-file (concat user-emacs-directory "core/core-load-paths.el"))
  (require 'core-spacemacs)
  (spacemacs/init)
  (spacemacs/maybe-install-dotfile)
  (configuration-layer/sync)
  (spacemacs/setup-startup-hook)
  (require 'server)
  (unless (server-running-p) (server-start)))
(with-eval-after-load 'org
    ;(setq org-startup-indented nil)
    ;(setq org-adapt-indentation  nil)
    ;(setq org-hide-leading-stars nil)
    (setq org-capture-templates
        '(
            ("t" "Todo" entry (file+headline "~/Dropbox/all.org" "Tasks")
             "* TODO %?\n  %i\n  %a")
            ("j" "Journal" entry (file+datetree "~/Dropbox/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")
        )
    )
    (setq org-startup-indented nil)
    (setq org-hide-leading-stars nil)
    (setq org-odd-level-only nil) 
    (setq org-insert-heading-respect-content nil)
    (setq org-M-RET-may-split-line '((item) (default . t)))
    (setq org-special-ctrl-a/e t)
    (setq org-return-follows-link nil)
    (setq org-use-speed-commands t)
    (setq org-startup-align-all-tables nil)
    (setq org-log-into-drawer nil)
    (setq org-tags-column 1)
    (setq org-ellipsis "..." )
    (setq org-speed-commands-user nil)
    (setq org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
    (setq org-completion-use-ido t)
    (setq org-indent-mode nil)
    (setq org-startup-truncated nil)
    (setq auto-fill-mode -1)
    (setq-default fill-column 99999)
    (setq fill-column 99999)
    (global-auto-revert-mode t)
    (prefer-coding-system 'utf-8)
    (cua-mode t) ;; keep the cut and paste shortcut keys people are used to.
)
