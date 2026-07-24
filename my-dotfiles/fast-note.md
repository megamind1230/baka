ctrl x s ==> prompt save any open buffers
ctrl h m ==> mode help
M-g i ==> Jump to function, variable or heading decleration.
M-% ==> Replace text with text over larger region or file
M-. ==> Jump to definition
M-, ==> Return back to former place.
C-x ==> Start box select.
C-x r t ==> Insert text to the area you selected earlier.
M-s o ==> Lists all matching terms and make them clickable.
C-M-n ==> Jump to next closing parentheses.
C-M-p ==> Same as above but backwards.
M-; ==> Toggle if line or region is commented.
C-t ==> Swap char under the cursor with the one after.
M-t ==> Swap word under cursor with next.




;; --------------------
;;melpa
;; --------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(package-initialize)
;; Refresh package contents if not already done
(unless package-archive-contents
  (package-refresh-contents))


;;(custom-set-variables
;; ;; custom-set-variables was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(package-selected-packages
;;   '(cape consult corfu corfu-terminal evil lv orderless use-package
;;          vertico which-key)))
;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; )

;;;; setup completion
;;(vertico-mode)
;;(setq completion-styles '(orderless basic))
;;(global-set-key (kbd "C-x b") 'consult-buffer)



;; --------------------
;; no menu/tool/scroll bars
;; --------------------
(setq native-comp-async-report-warnings-errors 'silent)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)
(menu-bar-mode -1)
(save-place-mode 1) ;; save cursor place in killed files
(blink-cursor-mode -1)
(global-display-line-numbers-mode 1) ;; show line numbers
(global-visual-line-mode 1) ;; smartly wrap lines
(setq vc-follow-symlinks t) ;; Always follow symlinks, no prompt
;;(windmove-default-keybindings) ;; shift+arrow to change window

;; --------------------
;; highlight current line
;; --------------------
(global-hl-line-mode 1)

;; updated: XDG-compliant cache/state dirs (replaces disabled backup block above)
(defconst dt/cache-dir
  (expand-file-name "emacs/" (or (getenv "XDG_CACHE_HOME") "~/.cache/")))
(defconst dt/state-dir
  (expand-file-name "emacs/" (or (getenv "XDG_STATE_HOME") "~/.local/state/")))

(dolist (dir (list dt/cache-dir
                    dt/state-dir
                    (expand-file-name "auto-save/" dt/cache-dir)
                    (expand-file-name "auto-save-list/" dt/cache-dir)
                    (expand-file-name "backups/" dt/cache-dir)))
  (unless (file-directory-p dir)
    (make-directory dir t)))

(setq custom-file (expand-file-name "custom.el" dt/state-dir))
(load custom-file t)
;; old disabled backup block (keep for reference):
;; (setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
;; (setq custom-file (locate-user-emacs-file "custom.el"))

(setq auto-save-list-file-prefix (expand-file-name "auto-save-list/.saves-" dt/cache-dir))
(setq backup-directory-alist `(("." . ,(expand-file-name "backups/" dt/cache-dir))))
(setq auto-save-file-name-transforms `((".*" ,(expand-file-name "auto-save/" dt/cache-dir) t)))
(setq bookmark-default-file (expand-file-name "bookmarks" dt/state-dir))
(setq recentf-save-file (expand-file-name "recentf" dt/state-dir))
(setq savehist-file (expand-file-name "savehist" dt/state-dir))
(setq save-place-file (expand-file-name "places" dt/state-dir))
(setq create-lockfiles nil)



;; --------------------
;; faster kill buffer
;; --------------------
(global-set-key (kbd "C-x k") 'kill-current-buffer)

;; --------------------
;; spaces over tabs
;; --------------------
(setq-default indent-tabs-mode nil)

;; idk whether to uncomment or not
;; ;; Isolate the external clipboard
;; (use-package simpleclip
;;   :if (display-graphic-p)
;;   :config
;;   ;; C-ins / M-ins to copy/paste from the system clipboard
;;   (global-set-key (kbd "C-<insert>") 'simpleclip-copy)
;;   (global-set-key (kbd "M-<insert>") 'simpleclip-paste)
;;   (simpleclip-mode))

;; ;; Provide access to the Wayland clipboard.
;; ;; Install the tool by running `dnf install -y wl-clipboard'
;; (defun wl-copy ()
;;   "Copy the current region to Wayland clipboard with wl-copy."
;;   (interactive)
;;   (when (use-region-p)
;;     (let ((p (make-process :name "wl-copy"
;;                            :command '("wl-copy")
;;                            :connection-type 'pipe))
;;           (s (buffer-substring-no-properties (region-beginning) (region-end))))
;;       (process-send-string p s)
;;       (process-send-eof p))))

;; ;; Use C-ins to copy into Wayland clipboard from an Emacs TTY
;; (unless (display-graphic-p)
;;   (global-set-key (kbd "C-<insert>") 'wl-copy))


;; Install Evil if not already installed
(unless (package-installed-p 'evil)
  (package-refresh-contents)
  (package-install 'evil))
;; Enable Evil mode
(require 'evil)
(evil-mode 1)
(require 'evil-surround)
(global-evil-surround-mode 1)

;; I installed which-key gnu
;; enable which-key mode
(which-key-mode 1)

;; disable bell sound, but use visible instead
(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; installed corfu / corfu-terminal / cape
;; Enable indentation and completion using the TAB key.
;;(setq tab-always-indent 'complete)
;; Make the completion suggest file paths.
;;(add-hook 'completion-at-point-functions #'cape-file)
;; Activate in buffer completion everywhere.
;;(global-corfu-mode)
;; enable corfu in terminal.
;; This is needed until child frame support for terminal Emacs arrives.
;;(unless (display-graphic-p) (corfu-terminal-mode +1))
;; For manual corfu, use SPC to add orderless separator.
;;(keymap-set corfu-map "SPC"  'corfu-insert-separator)
;; show completion automatically after a short delay
;;(setq corfu-auto t)

;; --------------------
;; search selected in browser, chatgpt
;; --------------------
(defun search-selected-text ()
  (interactive)
  (if (use-region-p)
      (browse-url
       (concat "https://duckduckgo.com/?q="
               (url-hexify-string
                (buffer-substring-no-properties
                 (region-beginning)
                 (region-end)))))
    (message "No region selected")))
(defun ask-chatgpt-browser ()
  "Send selected text to ChatGPT in browser."
  (interactive)
  (if (use-region-p)
      (let ((query (buffer-substring-no-properties
                    (region-beginning)
                    (region-end))))
        (browse-url
         (concat "https://chat.openai.com/?q="
                 (url-hexify-string query))))
    (message "No region selected")))
(global-set-key (kbd "C-c s") #'search-selected-text)
(global-set-key (kbd "C-c g") #'ask-chatgpt-browser)

;; --------------------
;; gcc AND gc to comment/uncomment
;; --------------------
(defun comment-line ()
  "Comment or uncomment the current line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
  (forward-line 1))
;; Using evil-mode style keybindings (recommended approach)
;; If you're using evil-mode:
(with-eval-after-load 'evil
  ;; Make gc an operator that works with motions (like gcap, gc5j, etc.)
  (evil-define-operator evil-comment-operator (beg end)
    "Comment or uncomment region."
    (comment-or-uncomment-region beg end))
  (define-key evil-normal-state-map "gc" 'evil-comment-operator)
  (define-key evil-visual-state-map "gc" 'evil-comment-operator)
  ;; gcc comments the current line
  (define-key evil-normal-state-map "g c c" 'comment-line))

;; --------------------
;; scratch buffer as default on startup, with no dashboard
;; --------------------
;; (defun emacs-startup ()
;;   "Start Emacs with *scratch* buffer."
;;   (get-buffer-create "*scratch*"))
;; (setq initial-buffer-choice #'emacs-startup)
;; (setq dashboard-set-init-info nil)
(set-frame-font "Ubuntu Mono-12" nil t)
(setq initial-major-mode 'org-mode)
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")


;; ;; org
;; ;; Enable Org
;; (require 'org)
;; ;; Where my org files live
;; (setq org-directory "~/org")
;; ;; Agenda files
;; (setq org-agenda-files (list org-directory))
;; ;; TODO workflow
;; (setq org-todo-keywords
;;       '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")))
;; ;; Keybindings
;; (global-set-key (kbd "C-c a") 'org-agenda)
;; (global-set-key (kbd "C-c c") 'org-capture)
;; ;;TODO states (minimal & powerful)
;; (setq org-todo-keywords
;;       '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
;;         (sequence "WAITING(w)" "|" "CANCELLED(c)")))
;; ;;capture into inbox?
;; (setq org-capture-templates
;;       '(("i" "Inbox" entry
;;          (file "inbox.org")
;;          "* TODO %?\n  %U\n")))
;; ;; agenda setup
;; (setq org-agenda-files '("~/org"))
;; (setq org-agenda-custom-commands
;;       '(("g" "GTD"
;;          ((agenda "")
;;           (todo "NEXT")
;;           (todo "WAITING")))))

;; --------------------
;; Org basics
;; --------------------
(require 'org)
(setq org-directory (expand-file-name "/mnt/hdd/obsi/vault_bank/org"))
(setq org-agenda-files (list org-directory))
;; Default notes file (important!)
(setq org-default-notes-file
      (expand-file-name "inbox.org" org-directory))
;; --------------------
;; TODO workflow
;; --------------------
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
        (sequence "WAITING(w)" "|" "CANCELLED(c)")))
;; --------------------
;; Keybindings
;; --------------------
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "C-c a") #'org-agenda)
;; --------------------
;; Capture templates
;; --------------------
(setq org-capture-templates
      `(("t" "Temp-note" entry
         (file ,(expand-file-name "0-inbox.org" org-directory))
         "* TODO %?\n  %U\n")))
;; --------------------
;; GTD Agenda
;; --------------------
(setq org-agenda-custom-commands
      '(("g" "GTD"
         ((agenda "")
          (todo "NEXT")
          (todo "WAITING")))))
;; Refile setup (make it usable)
(setq org-refile-targets
      '((org-agenda-files :maxlevel . 3)))
(setq org-refile-use-outline-path 'file)
(setq org-outline-path-complete-in-steps nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)
;; --------------------
;; ignore DONE in agenda view ig
;; --------------------
(setq org-agenda-todo-ignore-done t)
(setq org-agenda-skip-timestamp-pre-if-done t)
(setq org-agenda-skip-deadline-pre-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
;; (setq org-return-follows-link t)
(with-eval-after-load 'org
  (evil-define-key 'normal org-mode-map
    "gx" #'org-open-at-point
    (kbd "TAB") #'org-cycle
    (kbd "<backtab>") #'org-shifttab))
(global-set-key (kbd "C-c i") #'org-id-get-create)


;; --------------------
;; theme
;; --------------------
;; (Load-theme 'solarized-dark t)
;; (load-theme 'leuven-dark t)
(load-theme 'modus-vivendi-tinted t)


;; --------------------
;; recent files
;; --------------------
(recentf-mode 1)
(global-set-key (kbd "C-x C-r") #'recentf)


;; --------------------
;; encoding
;; --------------------
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)


;; --------------------
;; drag stuff.. to alt up/down lines
;; --------------------
(require 'drag-stuff)
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)
(with-eval-after-load 'evil
  (evil-define-key '(normal visual) 'global
    (kbd "M-h") #'drag-stuff-left
    (kbd "M-j") #'drag-stuff-down
    (kbd "M-k") #'drag-stuff-up
    (kbd "M-l") #'drag-stuff-right))


;; --------------------
;; workspaces
;; --------------------
(use-package perspective
  :init
  (setq persp-mode-prefix-key (kbd "C-c w"))
  (persp-mode))
(global-set-key (kbd "C-c w s") #'persp-switch)
(global-set-key (kbd "C-c w k") #'persp-kill)
(global-set-key (kbd "C-c w r") #'persp-rename)

;; --------------------
;; easier - [ ]  insertion
;; --------------------
(defun insert-org-checkbox ()
  "Insert an unchecked checklist item."
  (interactive)
  ;; (beginning-of-line)
  (insert "- [ ] "))
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c i c") #'insert-org-checkbox))
;; ----------------------------
;; faster table insertion
;; ----------------------------
(defun insert-org-table ()
  "Insert a the table core"
  (interactive)
  ;; (beginning-of-line)
  (insert "|||"))
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c i t") #'insert-org-table))
; ;; --------------------
; ;; csharp mode conf
; ;; --------------------
; (dolist (pkg '(lsp-mode
;                lsp-ui
;                company
;                csharp-mode))
;   (unless (package-installed-p pkg)
;     (package-install pkg)))
;     ;; ----------------------------
;     ;; LSP Mode
;     ;; ----------------------------
; (require 'lsp-mode)
; (setq lsp-keymap-prefix "C-c l")
; (setq lsp-enable-snippet t
;       lsp-enable-symbol-highlighting t
;       lsp-enable-indentation t)
; (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
; (require 'lsp-ui)
; (setq lsp-ui-doc-enable t
;       lsp-ui-sideline-enable t
;       lsp-ui-sideline-show-hover t)
; (require 'company)
; (global-company-mode)
; (require 'csharp-mode)
; (add-hook 'csharp-mode-hook #'lsp)
; (setq lsp-csharp-server-path "csharp-ls")

;; i installed (markdown-mode)
(use-package markdown-mode
  :ensure t)

;; enable org export to markdown
(require 'ox-md)


;; jk as esc
;; AND prevent jk locking emacs input
    ;; installed evil-escape btw
(use-package evil-escape
  :after evil
  :config
  (setq evil-escape-key-sequence "jk")
  (setq evil-escape-delay 0.3) ;; 300ms
  (evil-escape-mode 1))

;; Install vterm
(unless (package-installed-p 'vterm)
  (package-install 'vterm))

;; Install csharp-mode for C# syntax highlighting
(unless (package-installed-p 'csharp-mode)
  (package-install 'csharp-mode))

;; csharp-mode setup
(require 'csharp-mode)
(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

;; ----------------------------------------------------------------------
;; 1. Core Configuration for company-mode  *** REPLACED BY Corfu + Cape below ***
;; ----------------------------------------------------------------------
;; (use-package company
;;   :ensure t
;;   :init
;;   (global-company-mode) ;; Enable company-mode everywhere
;;   :config
;;   (setq company-minimum-prefix-length 1   ;; Start completion after typing 1 character
;;         company-idle-delay 0.0             ;; Show completions immediately, no delay
;;         company-selection-wrap-around t    ;; Cycle through candidates from start/end
;;         company-tooltip-align-annotations t ;; Align extra info (like method signatures) nicely
;;         ;; Optional: Show numbers in the tooltip for selection with M-1..M-0
;;         ;; company-show-numbers t
;;         ))
;;
;; ;; Optional but recommended: Adds icons to the completion tooltip for a modern IDE-like look
;; (use-package company-box
;;   :ensure t
;;   :hook (company-mode . company-box-mode))

;; ----------------------------------------------------------------------
;; 2. Core Configuration for lsp-mode  *** REPLACED BY Eglot below ***
;; ----------------------------------------------------------------------
;; (use-package lsp-mode
;;   :ensure t
;;   :init
;;   (setq lsp-keymap-prefix "C-c l")
;;   :hook
;;   (csharp-mode . lsp-deferred)
;;   :commands (lsp lsp-deferred)
;;   :config
;;   (setq lsp-completion-provider :none))
;;
;; (use-package lsp-ui
;;   :ensure t
;;   :hook (lsp-mode . lsp-ui-mode)
;;   :commands lsp-ui-mode)

;; ----------------------------------------------------------------------
;; 3. Eglot (built-in LSP client, replaces lsp-mode + lsp-ui)
;; ----------------------------------------------------------------------
(require 'eglot)
(setq eglot-autoshutdown t)
(setq eglot-extend-to-xref t)

(add-hook 'csharp-mode-hook #'eglot-ensure)

(define-key eglot-mode-map (kbd "C-c e f") #'eglot-format)
(define-key eglot-mode-map (kbd "C-c e r") #'eglot-rename)
(define-key eglot-mode-map (kbd "C-c e a") #'eglot-code-actions)

;; ----------------------------------------------------------------------
;; 4. Corfu + Cape (inline completion, replaces company + company-box)
;; ----------------------------------------------------------------------
(when (require 'corfu nil t)
  (setq corfu-auto t)
  (setq corfu-auto-delay 0.1)
  (setq corfu-auto-prefix 1)
  (setq corfu-cycle t)
  (setq corfu-count 14)
  (setq corfu-max-width 100)
  (setq corfu-min-width 35)
  (setq corfu-preview-current 'insert)
  (setq corfu-quit-no-match 'separator)
  (setq corfu-on-exact-match nil)
  (global-corfu-mode 1)

  ;; (define-key corfu-map (kbd "C-n") #'corfu-next)
  ;; (define-key corfu-map (kbd "C-p") #'corfu-previous)
  ;; (define-key corfu-map (kbd "C-y") #'corfu-insert)

  ;; new:
  ;; (evil-define-key 'insert corfu-map
  ;;   (kbd "C-n") #'corfu-next
  ;;   (kbd "C-p") #'corfu-previous
  ;;   (kbd "C-y") #'corfu-insert)

  ;; replace evil-define-key block with:
  (define-key evil-insert-state-map (kbd "C-n") #'corfu-next)
  (define-key evil-insert-state-map (kbd "C-p") #'corfu-previous)
  (define-key evil-insert-state-map (kbd "C-y") #'corfu-insert)

  (unless (display-graphic-p)
    (when (require 'corfu-terminal nil t)
      (corfu-terminal-mode +1))))

(when (require 'cape nil t)
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-keyword))

(defun yas-completion-at-point ()
  "Yasnippet completion at point."
  (when (fboundp 'yas--get-snippet-tables)
    (when-let* ((tables (yas--get-snippet-tables))
                (bounds (bounds-of-thing-at-point 'symbol)))
      (let ((symbols (cl-mapcan
                      (lambda (table)
                        (cl-remove-if-not #'stringp (yas--table-all-keys table)))
                      tables)))
        `(,(car bounds) ,(cdr bounds) ,symbols
          :annotation-function ,(lambda (cand) (concat " " "snippet"))
          :exclusive 'no)))))

(add-to-list 'completion-at-point-functions #'yas-completion-at-point)

;; ----------------------------------------------------------------------
;; 4. Code Snippets
;; ----------------------------------------------------------------------
(use-package yasnippet
  :ensure t
  :demand t
  :hook ((csharp-mode . yas-minor-mode)
         (prog-mode . yas-minor-mode)))
  ;; (define-key yas-minor-mode-map [(tab)] nil)
  ;; (define-key yas-minor-mode-map (kbd "TAB") nil)
  ;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
  ;; :bind
  ;; (:map yas-minor-mode-map ("S-<tab>" . yas-expand)))
  ;; new:
  ;; :bind
  ;; (:map yas-minor-mode-map ("TAB" . yas-expand)))

;; A collection of default snippets for many languages, including C#
(use-package yasnippet-snippets
  :ensure t
  :after yasnippet
  :config
  (yas-reload-all))

;; Company + Yasnippet integration  *** NOT NEEDED with Corfu (no bridge required) ***
;; (add-hook 'company-mode-hook
;;           (defvar company-mode/enable-yas t)
;;           (defun company-mode/backend-with-yas (backend)
;;             (if (or (not company-mode/enable-yas) (and (consp backend) (member 'company-yasnippet backend)))
;;                 backend
;;               (append (if (consp backend) backend (list backend))
;;                       '(:with company-yasnippet))))
;;           (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends)))

;; avy { the vimeasymotion alternative }
(require 'avy)
;; Jump to a character in the visible window { best }
(global-set-key (kbd "C-:") 'avy-goto-char)
;; Jump to a word beginning
(global-set-key (kbd "C-'") 'avy-goto-word-1)
;; Jump to a line
(global-set-key (kbd "M-g f") 'avy-goto-line)


;; RSS feed reader {elfeed}
(use-package elfeed
  :ensure t)
(setq elfeed-feeds
      '("https://www.youtube.com/feeds/videos.xml?channel_id=UCX5lX80yKjkzyXQWkkm3rOQ"
        "https://www.youtube.com/feeds/videos.xml?channel_id=UCngn7SVujlvskHRvRKc1cTw"
        "https://www.youtube.com/feeds/videos.xml?channel_id=UC11DKpZ9mdjdb5fbdb7ulRw"))
(defun dt/elfeed-mark-all-read ()
  "Mark all Elfeed entries as read."
  (interactive)
  (elfeed-search-untag-all-unread))
(defun dt/elfeed-mark-all-unread ()
  "Mark all Elfeed entries as unread."
  (interactive)
  (elfeed-search-tag-all-unread))

;; toggle evil-mode
(global-set-key (kbd "C-c e") #'evil-mode)

;; --------------------
;; Org → PDF export
;; --------------------
(setq org-latex-compiler "xelatex")
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"))
;; Delete .tex/.log/.aux junk after a successful export
(setq org-latex-remove-logfiles t)

;; --------------------
;; Global zoom (requires default-text-scale package)
;; --------------------
(use-package default-text-scale
  :config
  (global-set-key (kbd "C-=") 'default-text-scale-increase)
  (global-set-key (kbd "C--") 'default-text-scale-decrease))

;; --------------------
;; pandoc markdown to org in-place convertion
;; --------------------
;; (defun md-to-org (beg end)
;;   "Convert selected Markdown text to Org format in-place."
;;   (interactive "r")
;;   (unless (use-region-p)
;;     (user-error "No region selected"))

;;   (let* ((markdown (buffer-substring-no-properties beg end))
;;          ;; Requires pandoc installed
;;          (org-text
;;           (with-temp-buffer
;;             (insert markdown)
;;             (shell-command-on-region
;;              (point-min)
;;              (point-max)
;;              "pandoc -f markdown -t org"
;;              t t)
;;             (buffer-string))))

;;     (delete-region beg end)
;;     (goto-char beg)
;;     (insert org-text)))
(defun dt/md-to-org (beg end)
  "Convert selected Markdown text to Org format in-place."
  (interactive "r")
  (unless (use-region-p)
    (user-error "No region selected"))

  (let* ((markdown (buffer-substring-no-properties beg end))
         (org-text
          (with-temp-buffer
            (insert markdown)
            (shell-command-on-region
             (point-min)
             (point-max)
             "pandoc -f markdown -t org"
             t t)

            ;; Remove CUSTOM_ID property drawers
            (goto-char (point-min))
            (while (re-search-forward
                    "^:PROPERTIES:\n:CUSTOM_ID:.*\n:END:\n?"
                    nil t)
              (replace-match ""))

            (buffer-string))))

    (delete-region beg end)
    (goto-char beg)
    (insert org-text)))

(defun dt/org-to-md (beg end)
  "Convert selected Org text to Markdown format in-place."
  (interactive "r")
  (unless (use-region-p)
    (user-error "No region selected"))

  (let* ((org-text (buffer-substring-no-properties beg end))
         (md-text
          (with-temp-buffer
            (insert org-text)
            (shell-command-on-region
             (point-min)
             (point-max)
             "pandoc -f org -t gfm"
             t t)

            ;; Strip pandoc markdown attributes like {.done .DONE}
            (goto-char (point-min))
            (while (re-search-forward "{[^}]*}" nil t)
              (replace-match ""))

            (buffer-string))))

    (delete-region beg end)
    (goto-char beg)
    (insert md-text)))

;; backups/auto-save now go to XDG cache dir (see top of file)
;; (setq make-backup-files nil) ; disable ~ backups  -- disabled: XDG paths handle this
;; (setq auto-save-default nil) ; disable #autosave# files -- disabled: XDG paths handle this


;; (use-package pcre2el
;;   :ensure t)

;; (use-package visual-regexp
;;   :ensure t)

;; (use-package visual-regexp-steroids
;;   :ensure t
;;   :after (visual-regexp pcre2el))
(defun my-replace-whole-buffer-if-no-region (orig-fun &rest args)
  (if (use-region-p)
      (apply orig-fun args)
    (save-excursion
      (mark-whole-buffer)
      (apply orig-fun args))))

(advice-add 'query-replace :around #'my-replace-whole-buffer-if-no-region)
(advice-add 'query-replace-regexp :around #'my-replace-whole-buffer-if-no-region)
(advice-add 'replace-string :around #'my-replace-whole-buffer-if-no-region)
(advice-add 'replace-regexp :around #'my-replace-whole-buffer-if-no-region)




;; ;; --------------------
;; ;; Consult (better buffer/file/search commands)
;; ;; --------------------
;; (when (require 'consult nil t)
;;   (global-set-key (kbd "C-s") #'consult-line)
;;   (global-set-key (kbd "C-x b") #'consult-buffer))

;; --------------------
;; SPC leader key (vanilla, no general.el needed)
;; --------------------
(define-key evil-normal-state-map (kbd "SPC") nil)
(define-key evil-motion-state-map (kbd "SPC") nil)

(let ((leader-map (make-sparse-keymap)))
  (define-key evil-normal-state-map (kbd "SPC") leader-map)
  (define-key evil-visual-state-map (kbd "SPC") leader-map)

  ;; Buffers
  (define-key leader-map (kbd "b") nil)
  (define-key leader-map (kbd "bb") (if (fboundp 'consult-buffer) #'consult-buffer #'switch-to-buffer))
  (define-key leader-map (kbd "bd") #'kill-current-buffer)
  (define-key leader-map (kbd "bi") #'ibuffer)
  (define-key leader-map (kbd "bs") #'save-buffer)

  ;; Files
  (define-key leader-map (kbd "f") nil)
  (define-key leader-map (kbd "ff") #'find-file)
  (define-key leader-map (kbd "fs") #'save-buffer)
  ;; (define-key leader-map (kbd "fr") (if (fboundp 'consult-recent-file) #'consult-recent-file #'recentf-open-files))

  ;; Projects
  (define-key leader-map (kbd "p") nil)
  (define-key leader-map (kbd "pp") #'project-switch-project)
  (define-key leader-map (kbd "pf") #'project-find-file)
  (define-key leader-map (kbd "pg") #'project-find-regexp)
  (define-key leader-map (kbd "pb") #'project-switch-to-buffer)
  (define-key leader-map (kbd "pd") #'project-dired)
  (define-key leader-map (kbd "pe") (lambda () (interactive) (let ((default-directory (if-let* ((p (project-current))) (project-root p) default-directory))) (eshell t))))
  (define-key leader-map (kbd "pk") #'project-kill-buffers)

  ;; Windows
  (define-key leader-map (kbd "w") nil)
  (define-key leader-map (kbd "wh") #'windmove-left)
  (define-key leader-map (kbd "wj") #'windmove-down)
  (define-key leader-map (kbd "wk") #'windmove-up)
  (define-key leader-map (kbd "wl") #'windmove-right)
  (define-key leader-map (kbd "wd") #'delete-window)
  (define-key leader-map (kbd "wo") #'delete-other-windows)
  (define-key leader-map (kbd "ws") #'split-window-below)
  (define-key leader-map (kbd "wv") #'split-window-right)

  ;; Quit
  (define-key leader-map (kbd "q") nil)
  (define-key leader-map (kbd "qq") #'save-buffers-kill-terminal)

  ;; Help
  (define-key leader-map (kbd "h") nil)
  (define-key leader-map (kbd "hf") #'describe-function)
  (define-key leader-map (kbd "hk") #'describe-key)
  (define-key leader-map (kbd "hv") #'describe-variable))



;; ;; --------------------
;; ;; list bindings
;; ;; --------------------
;; (defun list-bindings ()
;;   "List all commands with a keybinding, sorted by name."
;;   (interactive)
;;   (let* ((bindings '())
;;          (seen     (make-hash-table :test #'equal)))
;;     ;; Walk one keymap recursively
;;     (cl-labels ((walk (km)
;;                 (map-keymap
;;                  (lambda (_evt bind)
;;                    (cond
;;                     ((keymapp bind)  (walk bind))
;;                     ((and (commandp bind) (symbolp bind))
;;                      (unless (gethash bind seen)
;;                        (puthash bind t seen)
;;                        (let ((keys
;;                              (where-is-internal bind nil t)))
;;                          (when keys
;;                            (push
;;                             (cons (symbol-name bind)
;;                                   (key-description keys))
;;                             bindings))))))
;;                  km)))
;;       ;; Collect global + local + evil maps
;;       (dolist (km
;;                (append
;;                 (list (current-global-map)
;;                       (current-local-map))
;;                 (when (featurep 'evil)
;;                   (list evil-normal-state-map
;;                         evil-insert-state-map
;;                         evil-visual-state-map
;;                         evil-motion-state-map
;;                         evil-emacs-state-map))))
;;         (when km (walk km)))
;;       ;; Sort by function name
;;       (setq bindings
;;             (sort bindings
;;                   (lambda (a b) (string< (car a) (car b)))))
;;       ;; Render in temp buffer
;;       (with-current-buffer (get-buffer-create "*keybindings*")
;;         (let ((inhibit-read-only t))
;;           (erase-buffer)
;;           (insert (format "%-50s %s\n" "Function" "Keybinding"))
;;           (insert (make-string 70 ?=) "\n\n")
;;           (pcase-dolist (`(,cmd . ,keys) bindings)
;;             (insert (format "%-50s ==>  %s\n" cmd keys)))
;;           (goto-char (point-min))
;;           (setq buffer-read-only t))
;;         (display-buffer (current-buffer))
;;         (message "Found %d keybindings" (length bindings)))))
;; ;; Bind it
;; (global-set-key (kbd "C-c k") #'list-bindings)

;; --------------------
;; list bindings, you could just use `C-h b` .. but i created mine .. cuz why not
;; --------------------
(defun list-bindings ()
  "List all commands with a keybinding, sorted by name."
  (interactive)
  (let* ((bindings '())
         (seen (make-hash-table :test #'equal)))

    (cl-labels
        ((walk (km)
           (map-keymap
            (lambda (_evt bind)
              (cond
               ((keymapp bind)
                (walk bind))
               ((and (commandp bind) (symbolp bind))
                (unless (gethash bind seen)
                  (puthash bind t seen)
                  (let ((keys (where-is-internal bind nil t)))
                    (when keys
                      (push (cons (symbol-name bind)
                                  (key-description keys))
                            bindings)))))))
            km)))

      ;; Walk maps
      (dolist (km
               (append
                (list (current-global-map)
                      (current-local-map))
                (when (featurep 'evil)
                  (list evil-normal-state-map
                        evil-insert-state-map
                        evil-visual-state-map
                        evil-motion-state-map
                        evil-emacs-state-map))))
        (when km (walk km)))

      ;; Sort
      (setq bindings
            (sort bindings
                  (lambda (a b) (string< (car a) (car b)))))

      ;; Output buffer
      (with-current-buffer (get-buffer-create "*keybindings*")
        (let ((inhibit-read-only t))
          (erase-buffer)
          (insert (format "%-50s %s\n" "Function" "Keybinding"))
          (insert (make-string 70 ?=) "\n\n")
          (pcase-dolist (`(,cmd . ,keys) bindings)
            (insert (format "%-50s ==>  %s\n" cmd keys)))
          (goto-char (point-min))
          (setq buffer-read-only t))
        (display-buffer (current-buffer))
        (message "Found %d keybindings" (length bindings))))))

;; Bind it
(global-set-key (kbd "C-c k") #'list-bindings)

;; esc as ctrl g or cancel cmd
(keymap-global-set "<escape>" #'keyboard-escape-quit)


;; vertico --> vertical listing for M-x and vertical buffer listing
(use-package vertico
  :ensure t
  :config
  (vertico-mode 1))


;; marginalia extra info for vertico
(use-package marginalia
  :ensure t
  :config
  (marginalia-mode 1))


;; orderless, fuzzy find search orderlessly
(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless basic))
  (setq completion-category-defaults nil)
  )


;; ;; delsel , just select , type ==> and selection is deleted
;; (use-package delsel
;;   :ensure nil
;;   :config
;;   (delete-selection-mode 1))

;;(delete-selection-mode 1)

;; alternative buffer fast switching
(global-set-key (kbd "C-x C-a") #'mode-line-other-buffer)

;; ;; denote
;; ;; Remember that the website version of this manual shows the latest
;; ;; developments, which may not be available in the package you are
;; ;; using.  Instead of copying from the web site, refer to the version
;; ;; of the documentation that comes with your package.  Evaluate:
;; ;;
;; ;;     (info "(denote) Sample configuration")
;; (use-package denote
;;   :ensure t
;;   :hook (dired-mode . denote-dired-mode)
;;   :bind
;;   (("C-c d n" . denote)
;;    ("C-c d r" . denote-rename-file)
;;    ("C-c d l" . denote-link)
;;    ("C-c d b" . denote-backlinks)
;;    ("C-c d d" . denote-dired)
;;    ("C-c d g" . denote-grep))
;;   :config
;;   (setq denote-directory (expand-file-name "/mnt/hdd/obsi/vault_bank/"))

;;   ;; Automatically rename Denote buffers when opening them so that
;;   ;; instead of their long file name they have, for example, a literal
;;   ;; "[D]" followed by the file's title.  Read the docstring of
;;   ;; `denote-rename-buffer-format' for how to modify this.
;;   (denote-rename-buffer-mode 1))


;; --------------------
;; emacsclient server
;; --------------------
(condition-case nil
    (server-start)
  (error
   (server-force-delete)
   (server-start)))

;; golden-ratio
(unless (package-installed-p 'golden-ratio)
  (package-refresh-contents)
  (package-install 'golden-ratio))
(require 'golden-ratio)
(golden-ratio-mode 1)

;; CF project layout
(defun dt/codeforces-open (dir)
  "Open CF problem layout: Program.cs left, input/output/vterm right."
  (interactive (list (read-directory-name "CF dir: " "~/cp/")))
  (let* ((proj-cs  (expand-file-name "Program.cs" dir))
         (input-txt (expand-file-name "input.txt" dir))
         (output-txt (expand-file-name "output.txt" dir)))
    (delete-other-windows)
    (find-file proj-cs)
    (split-window-right)
    (other-window 1)
    (find-file input-txt)
    (split-window-below)
    (other-window 1)
    (find-file output-txt)
    (split-window-below)
    (other-window 1)
    (vterm)
    (other-window -3)
    (balance-windows)))

;; search vault bank (by name) (vault picker)
(defun dt/vault-picker ()
  (interactive)
  (let ((default-directory (expand-file-name "/mnt/hdd/obsi/vault_bank/")))
    (call-interactively #'consult-find)))
(global-set-key (kbd "C-c v p") #'dt/vault-picker)

;; search vault bank (by name) (vault new note)
(defun dt/vault-new ()
  (interactive)
  (let ((default-directory (expand-file-name "/mnt/hdd/obsi/vault_bank/")))
    (call-interactively #'find-file)))
(global-set-key (kbd "C-c v n") #'dt/vault-new)

;; search vault bank (by content) (vault grep)
(defun dt/vault-grep ()
  (interactive)
  (let ((default-directory (expand-file-name "/mnt/hdd/obsi/vault_bank/")))
    (call-interactively #'consult-grep)))
(global-set-key (kbd "C-c v g") #'dt/vault-grep)

;; wiki link style for .md
(defun dt/insert-link (file title)
  (interactive
   (progn
     (unless (eq major-mode 'markdown-mode)
       (user-error "Only usable in markdown buffers"))
     (let* ((vault-dir (expand-file-name "/mnt/hdd/obsi/vault_bank/"))
            (files (directory-files-recursively vault-dir "" t))
            (files (mapcar (lambda (f) (file-relative-name f vault-dir)) files))
            (file (completing-read "Link to: " files nil t)))
       (list file
             (read-string "Link text: "
                          (file-name-sans-extension (file-name-base file)))))))
  (insert (format "[[%s|%s]]" file title)))
(global-set-key (kbd "C-c v l") #'dt/insert-link)


;; random note
(defun dt/vault-random ()
  (interactive)
  (let* ((vault-dir (expand-file-name "/mnt/hdd/obsi/vault_bank/"))
         (files (directory-files-recursively
                 vault-dir
                 "\\.\\(md\\|org\\)\\'"
                 t)))
    (if files
        (find-file (nth (random (length files)) files))
      (message "No .md or .org files in vault"))))

(global-set-key (kbd "C-c v r") #'dt/vault-random)

;; fast file reload
(global-auto-revert-mode 1)


(electric-pair-mode 1)           ;; auto-close brackets {} [] () "" etc.
(setq-default tab-width 2)       ;; display width
(setq-default c-basic-offset 2)  ;; C#/C indent


; ;; org refactor after md-to-org
; (defun dt/org-refactor-region (beg end)
;   "Refactor the selected Org region.
; - Delete every line starting with \"---\".
; - Demote every Org heading by one level."
;   (interactive "r")
;   (unless (use-region-p)
;     (user-error "No region selected"))
;   (save-excursion
;     (save-restriction
;       (narrow-to-region beg end)
;       ;; Delete separator lines.
;       (goto-char (point-min))
;       (flush-lines "^---")
;       ;; Demote every heading by one level.
;       (goto-char (point-min))
;       (while (re-search-forward "^\\(\\*+\\) " nil t)
;         (replace-match (concat (match-string 1) "* ") t t)))))

(defun dt/org-refactor-region (beg end)
  "Refactor the selected Org region.

- Delete every line starting with \"---\".
- Demote every Org heading by one level.
- Strip heading markers from level-4+ headings."
  (interactive "r")
  (unless (use-region-p)
    (user-error "No region selected"))
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)

      ;; Delete separator lines.
      (goto-char (point-min))
      (flush-lines "^---")

      ;; Demote every heading by one level.
      (goto-char (point-min))
      (while (re-search-forward "^\\(\\*+\\) " nil t)
        (replace-match (concat (match-string 1) "* ") t t)))))

(defun dt/org-strip-headings (beg end)
  "Strip Org heading markers from level-4+ headings in the selected region.

Examples:
**** Learn:    -> Learn:
***** Features -> Features
****** Notes   -> Notes"
  (interactive "r")
  (unless (use-region-p)
    (user-error "No region selected"))
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (re-search-forward "^\\*\\{4,\\}[ \t]+" nil t)
        (replace-match "" t t)))))
(put 'narrow-to-region 'disabled nil)

;; i installed (key-quiz package)
(use-package key-quiz
  :ensure t)

;; i installed (evil-surround)
(use-package evil-surround
  :ensure t)

(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; --------------------
;; Markdown - org-like cycling + navigation for evil
;; --------------------
(with-eval-after-load 'markdown-mode
  (evil-define-key 'normal markdown-mode-map
    (kbd "TAB")       #'markdown-cycle
    (kbd "<backtab>") #'markdown-shifttab
    "gx"              #'markdown-follow-thing-at-point))


;; i installed (consult)
(use-package consult
  :ensure t)

(use-package embark
  :ensure t
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
    ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'
  ;;:init
  ;; Optionally replace the key help with a completing-read interface
  ;;(setq prefix-help-command #'embark-prefix-help-command)
  ;; Show the Embark target at point via Eldoc. You may adjust the
  ;; Eldoc strategy, if you want to see the documentation from
  ;; multiple providers. Beware that using this can be a little
  ;; jarring since the message shown in the minibuffer can be more
  ;; than one line, causing the modeline to move up and down:
  ;; (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)
  ;; Add Embark to the mouse context menu. Also enable `context-menu-mode'.
  ;; (context-menu-mode 1)
  ;; (add-hook 'context-menu-functions #'embark-context-menu 100)
  ;;:config
  ;; Hide the mode line of the Embark live/completions buffers
 ;; (add-to-list 'display-buffer-alist
 ;;              '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
 ;;                nil
 ;;                (window-parameters (mode-line-format . none)))))
  )
;; Consult users will also want the embark-consult package.
; only need to install it, embark loads it after consult if found
(use-package embark-consult
  :ensure t)


#baka
a
abandoned
abilities
ability
able
about
above
abroad
absence
absorbed
absolutely
absorbing
abstract
abundance
abundant
abuse
abusing
academic
academy
accept
acceptable
acceptance
accepting
access
accessible
accident
accidental
accidents
acclaimed
accommodate
accommodation
accompany
accomplish
accomplished
accomplishing
according
accordingly
account
accumulate
accurate
accusations
accused
accuser
accusing
accustomed
achieve
achieved
achievement
achievements
achieving
acknowledge
acquainted
acquired
acquitted
across
act
action
actions
active
actively
activities
activity
actor
actual
actually
adapt
adapted
add
addition
additional
address
addresses
adept
adequate
adhered
adjustments
administer
admirable
admired
admit
adolescents
adopted
adoption
advance
advanced
advancements
advantages
adventure
adventurous
adverb
advertised
advertisement
advice
advise
advised
advising
advocate
affairs
affect
affected
affecting
affection
afford
affordable
afraid
africa
after
afternoon
afterward
again
against
age
aged
agencies
agent
ages
aggressive
ago
agree
agreed
agreement
agricultural
agriculture
ahead
aids
aim
air
airline
airport
alarm
alarmed
alcoholism
alexa
alexandria
algae
ali
alibi
alien
alive
all
alleged
alleviate
allow
allowed
allows
almost
alone
along
alongside
aloud
already
also
alter
altered
alternative
alternatives
although
altitude
altogether
always
am
amazing
ambassador
ambition
ambitious
amenities
american
among
amongst
amount
amused
an
analysing
analysis
analytical
ancestors
ancient
and
anger
angle
angrily
angry
animal
animals
anniversary
announced
annoyance
annoyed
annual
another
answer
answers
antonyms
anxiety
anxious
any
anybody
anyone
anything
anyway
anywhere
apart
apartment
apologise
apparent
apparently
appeal
appear
appearance
appeared
appearing
appears
appetite
applauded
applicable
application
applied
apply
appointed
appointment
appreciated
appreciation
approach
approached
appropriate
approval
approve
approximately
april
arab
arabic
archaeological
area
areas
aren't
argument
arise
armed
army
around
arrange
arranged
arrangement
arrangements
arrest
arrested
arresting
arrival
arrive
arrived
art
article
articles
artificial
artist
artists
as
ashamed
aside
ask
asked
asking
asks
asleep
aspect
aspects
assault
assess
assigned
assignment
assist
assistant
association
assume
assumption
asthma
astonished
at
athlete
atmosphere
attach
attack
attacked
attacks
attempt
attempted
attend
attendance
attended
attention
attitude
attract
attraction
attractive
audience
auditor
august
aunt
author
authorities
authority
autobiography
automatic
automatically
autonomous
available
average
avoid
avoiding
awaited
awake
award
awarded
aware
awareness
away
awful
b
baby
back
background
backpack
backward
bad
badge
badly
baggage
bake
balance
balanced
ball
ban
band
bank
banking
bar
barely
bargain
barrier
base
based
basel
basic
basis
basket
bate
bath
battle
bay
be
beach
beans
bear
beard
beat
beautiful
beautifully
beauty
because
become
becomes
becoming
bed
bedroom
been
before
beforehand
began
begin
beginning
begins
behalf
behave
behaved
behavior
behaviour
behaviours
being
belief
believe
believed
believes
bell
belong
belongs
below
bench
bend
beneath
benefit
benefited
benefits
benign
beside
besides
best
betray
better
between
beyond
bias
bicultural
big
bigger
bilingual
bill
billion
bind
biography
biological
bird
birds
birth
birthday
bite
bites
biting
bitter
black
blacksmith
blame
blamed
blank
blast
blew
blind
block
blood
blow
blowing
blue
blues
board
boast
boat
bodies
body
boiled
bomb
bond
bone
bones
book
bookshop
books
bored
boring
born
borrow
boss
both
bother
bottle
bottom
bought
bounce
bound
boundary
bowl
box
boy
brainstorm
branch
brand
brave
bread
break
breakdown
breakfast
breaking
breaks
breath
breathe
breathing
breed
breeds
bridge
brief
bright
brilliant
bring
bringing
brings
broadcast
broadsheet
broadside
brochure
broke
broken
brother
brought
brown
brush
budget
build
building
buildings
built
bulk
bullet
bunch
burden
bureau
burglar
burial
burn
burning
burnout
burst
bury
bus
business
businessman
businessmen
busy
but
butter
button
buy
buyer
by
bye
c
cabin
cafe
cafeteria
cairo
calcium
calculate
calendar
call
called
calling
calm
calmed
came
camera
campaign
camping
campus
can
canada
canadian
canal
cancel
cancelled
cancer
candidate
candle
candy
cannon
cannot
canoe
canopy
capability
capable
capacity
capital
capsule
captain
capture
car
carbon
card
care
career
careful
carefully
careless
cargo
carnivores
carried
carries
carry
carton
case
cash
cast
castle
casual
casualties
cat
catch
category
cater
cattle
caught
cause
caused
causes
causing
caution
cautious
cave
cease
ceiling
celebrate
celebrated
celebrities
cell
cement
cent
center
central
century
ceremony
certain
certainly
certainty
certificate
chain
chair
challenge
chamber
champion
chance
change
changed
changes
changing
channel
chapter
character
characteristic
characterized
characters
charge
charged
charities
charity
charlie
chaplin
chase
chasing
cheap
cheaper
cheat
cheating
check
checked
cheer
cheered
chef
chemical
chemicals
chemist
child
childhood
children
choice
choose
choosing
chose
chosen
chronic
chunk
cinema
circle
circumstances
citizen
city
civil
civilization
civilized
claim
class
classic
classroom
clean
cleaner
clear
clearly
clerk
clever
cliff
climate
climb
clinic
clock
close
closed
closely
closer
closest
clothes
cloud
club
clue
clumsy
coach
coal
coast
coat
cocoa
code
coffee
collapse
colleague
collect
collected
collection
collective
collector
college
color
colour
colourful
column
combat
combination
combine
combined
come
comedy
comfort
comfortable
coming
command
comment
commercial
commission
commit
committed
committee
common
commonly
communicate
communication
community
companion
company
compare
comparison
compartment
compass
compensate
compensated
compensation
compete
competition
competitive
competitively
competitor
complain
complaint
complete
completely
complex
complicated
compliment
comply
components
compose
composition
compromise
computer
computing
concentrate
concentration
concept
concern
concerned
concerning
concert
conclude
concluded
conclusion
concrete
condition
conditions
conduct
conference
confidence
confident
confirm
confirmed
conflict
confront
confuse
confused
confusing
confusion
connect
connected
connection
conscience
conscious
consequence
consequences
conservation
conservative
consider
considerable
considered
considering
consist
consistent
conspiracy
constant
constantly
constitute
constitution
construct
construction
consult
consume
consumer
consumption
contact
contain
contained
container
containing
contains
contemporary
content
contents
contest
context
continent
continue
continued
continues
continuous
contract
contradict
contrary
contrast
contribute
contribution
control
controlled
controversial
convenience
convenient
conventional
conversation
convert
convince
convinced
convincing
cook
cooked
cookies
cool
cooperate
cooperation
coordinate
cop
cope
copy
corner
corporate
correct
correctly
correspond
corruption
cost
costs
costume
cottage
could
couldn't
council
count
counter
countries
country
county
couple
courage
course
court
cousin
cover
covered
covering
cow
crack
craft
crafts
crash
crazy
cream
create
created
creates
creating
creation
creative
creativity
creator
creature
credit
creep
crew
crime
criminal
criminals
crisis
criteria
critical
criticize
crop
cross
crowd
crowded
crown
crucial
cruel
crush
cry
crying
crystal
cult
cultural
culturally
culture
cup
cupboard
cure
curiosity
curious
current
currently
curriculum
curtain
curve
custom
customer
customers
customs
cut
cute
cycle
d
dad
daily
dam
damage
damaged
damages
damp
dance
danger
dangerous
dare
dark
darkness
data
date
daughter
dawn
day
days
dead
deadline
deadly
deal
dealer
dear
death
debate
debt
decade
decades
decide
decided
decision
decisive
declarative
declare
declined
decorate
decrease
decreased
dedicate
dedicated
deep
deeply
deer
defeat
defect
defective
defence
defend
defender
defense
deficit
define
definite
definitely
definition
degree
delay
delayed
deliberately
delicate
delicious
delight
delighted
deliver
delivered
delivering
demand
demanding
demolish
demonstrate
department
depend
dependence
dependent
depending
deposit
depression
deprivation
depth
deputy
derive
descend
describe
described
description
desert
desertification
deserve
deserves
design
designed
desire
desk
desperate
despise
despite
destination
destroy
destroyed
destruction
destructive
detach
detail
details
detain
detect
detection
detective
determination
determine
determined
develop
developed
developing
development
device
devices
devote
diabetes
diagnosis
diagnostics
diary
dictate
dictionary
did
didn't
die
diet
differ
difference
different
difficult
difficulties
difficulty
dig
digital
dignity
dilemma
diligence
dilute
dimension
diplomatic
direct
direction
directly
director
dirty
disability
disabled
disadvantage
disagree
disagreement
disappear
disappointed
disappointing
disapproval
disaster
disastrous
discard
discern
discipline
disclose
disco
discomfort
disconnect
discourages
discover
discovered
discovery
discrimination
discuss
discussion
disease
diseases
disgust
dish
dishes
dishonest
dislike
dismiss
disorder
display
disposal
dispute
dissertation
distance
distant
distinction
distinguish
distracted
distraction
distribution
district
disturb
dive
diverse
diversion
diversity
divide
division
do
doctor
doctors
document
does
doesn't
dog
doing
domestic
dominant
donate
donation
done
door
doorbell
dose
dot
double
doubt
down
download
downstairs
dozen
draft
dragonflies
drain
dramatic
dramatically
drank
draw
drawer
drawing
drawn
dread
dream
dreamed
dreaming
dreams
dress
dressed
drink
drinking
drive
driver
drivers
driving
drop
drought
drove
drugs
dry
due
dull
during
dust
dusty
duty
dwell
dying
e
each
eager
eagerness
ear
early
earn
earth
earthquake
ease
easier
easily
east
eastern
easy
eat
eating
echo
ecological
economic
economically
economist
economy
edge
edition
editor
educate
educated
education
educational
effect
effective
effects
efficiency
efficient
efficiently
effort
efforts
egg
egypt
egyptian
eight
either
elaborate
elder
elderly
elect
election
electric
electrical
electricity
electronic
electronically
elegant
element
elephant
elevate
eleven
eligible
eliminate
else
elsewhere
email
embassy
embrace
emergency
emerge
emerging
emission
emotions
emotional
emotionally
emperor
emphasis
emphasize
empire
employ
employee
employer
employment
empty
enable
enacted
encounter
encourage
encouraged
encouragement
encourages
encouraging
end
ended
ending
endless
enemy
energetic
energy
engage
engine
engineer
engineering
english
enhance
enjoy
enjoyable
enjoyed
enjoying
enjoyment
enormous
enough
enquire
enrolled
ensure
enter
enterprise
entertain
entertaining
entertainment
enthusiasm
enthusiastic
entire
entirely
entitle
entrance
entry
environment
environmental
episode
equal
equality
equip
equipment
equivalent
era
error
escape
especially
essay
essential
establish
established
estate
estimate
estella
etc
ethical
europe
european
evaluate
even
evening
event
eventually
ever
every
everybody
everyday
everyone
everything
everywhere
evidence
evil
evolution
evolve
exact
exactly
exam
examination
examine
examining
example
exams
exceed
excellence
excellent
except
exception
exceptional
excerpt
excess
excessive
exchange
excited
excitement
exciting
exclude
exclusive
excuse
execute
executed
executive
exercise
exert
exhaust
exhausting
exhaustion
exhibit
exhibition
exhibits
exist
existence
existing
expand
expect
expected
expecting
expects
expensive
experience
experienced
experiences
experiment
expert
experts
explain
explaining
explanation
explode
exploit
exploration
explore
export
expose
exposed
express
expression
extend
extensive
extent
external
extinct
extinction
extra
extraordinary
extreme
extremely
eye
eyes
f
face
faced
faces
facilitate
facilities
facility
fact
factor
factors
factory
facts
faculty
fail
failed
failure
fair
fairly
fairness
fairy
faith
fake
fall
fallen
false
fame
familiar
family
famous
fan
fancy
far
farm
farmer
farming
farms
fashion
fashionable
fast
faster
fat
fatal
fate
father
fatigue
fault
favour
favourite
fax
fear
feared
fears
feasible
feast
feature
features
february
fed
fee
feed
feedback
feel
feeling
feelings
feels
feet
fellow
female
feminist
fence
fertile
fertilizer
festival
fetch
few
fewer
fiction
field
fierce
fifteen
fifth
fifty
fight
fighting
figure
file
fill
filled
film
filter
final
finally
finance
financial
find
finding
fine
finger
finish
finished
fire
firm
first
fish
fisherman
fit
fitness
fitter
fittest
five
fix
fixed
fixture
flag
flame
flat
flavour
flaw
fled
flexible
flight
float
flock
flood
floor
flour
flourish
flow
flower
flu
fluctuate
fluffy
fluorescent
flute
fly
flying
focus
fog
fold
folk
follow
following
follows
fond
food
fool
fooling
foolish
foot
football
footballer
for
forbid
force
forced
forecast
foreign
foreigner
forest
forever
forget
forgive
forgiveness
forgot
fork
form
formal
format
former
forms
formula
forth
fortunate
fortune
forty
forum
forward
found
foundation
founded
fountain
four
fourth
frame
france
free
freedom
freeze
french
frequency
frequent
fresh
freshman
friday
friend
friendly
friends
friendship
fright
frighten
frightened
frightening
from
front
fruit
frustrated
frustration
fuel
full
fun
function
fund
fundamental
funding
funeral
funny
furious
furniture
further
furthermore
fusion
future
g
gain
gained
gallery
game
gap
garage
garden
gas
gate
gather
gave
gaze
gelatin
gender
general
generally
generate
generates
generation
generosity
generous
genes
genetic
genuine
geographical
get
gets
getting
ghost
giant
gift
girl
girls
give
given
giving
glad
glance
glare
glass
global
globalization
globe
glory
glove
go
goal
goals
goat
god
gold
golden
gone
good
goodies
goodness
goods
govern
government
governmental
governor
grab
grace
grade
gradually
graduate
graduated
grain
grammar
grand
grant
grass
grateful
grave
great
greatest
greatly
greedy
green
greet
grew
grey
grin
grind
grip
ground
group
grow
growing
grown
growth
guarantee
guard
guess
guest
guidance
guide
guilty
guitar
gun
guy
h
habit
had
hail
hair
half
hall
halt
hamza
hand
handful
handle
handkerchief
handout
hands
handsome
handwriting
hang
happen
happened
happening
happens
happier
happily
happiness
happy
hard
harder
hardly
hardship
hardships
harm
harmful
harmless
harsh
has
hasn't
hate
hateful
hatred
haul
have
haven't
having
hazard
he
head
headache
headline
headmaster
health
healthy
hear
heard
hearing
heart
heartbeat
heat
heating
heaven
heavily
heavy
height
held
helicopter
hell
help
helped
helpful
helping
helps
hence
her
herb
herbs
herd
here
heritage
hero
herself
hesitate
hey
hide
hiding
high
higher
highest
highly
highway
hiking
hill
him
himself
hinder
hinge
hint
hire
his
historic
historical
history
hit
hobby
hold
hole
holiday
home
homeless
homeowner
homework
honest
honesty
honor
honourable
hook
hope
hoped
hopeful
hopeless
horizon
horrible
horror
horse
hospital
host
hot
hotel
hour
house
household
houses
housework
housing
how
however
huge
human
humanity
humble
humor
hundred
hung
hunger
hungry
hunt
hunter
hunting
hurry
hurt
husband
hut
hype
i
ice
idea
ideal
identical
identity
if
ignore
ill
illegal
illness
illusion
illustrate
image
imaginary
imagination
imagine
imagined
imitate
immediate
immediately
immersive
immigrant
immune
impact
impatient
implement
implication
imply
import
importance
important
impose
impossible
impress
impression
impressive
imprison
improper
improve
improved
improvement
improves
in
inability
inadequate
inappropriate
incapable
incident
incline
include
included
includes
including
income
incomplete
inconvenient
increase
increased
increases
increasing
increasingly
incredible
incredibly
indeed
indefinite
independence
independent
indicate
indicated
indigenous
indirect
indispensable
individual
individuals
indoor
industrial
industries
industry
inefficient
inevitable
inexpensive
infamous
infected
infection
infer
inferior
infinite
inflamed
inflation
influence
influential
inform
informal
information
infrastructure
inhabit
inherent
initial
initially
initiative
injection
injure
injured
injury
inner
innocent
innovation
innovations
innovative
inorganic
input
inquire
insect
insects
inside
insight
insist
insists
inspect
inspiration
inspire
inspired
install
instance
instead
institute
institution
instruction
instructions
instructor
instrument
insufficient
insulation
insurance
integral
integrate
integrity
intellectual
intelligence
intelligent
intend
intended
intense
intention
interact
interactive
interdisciplinary
interest
interested
interesting
interfere
interference
interior
intermediate
internal
international
internet
internship
interpretation
interpersonal
interrupt
interval
interview
interviewed
into
introduce
introduced
introduction
introductory
invest
investigate
investigation
investment
investor
invitation
invite
involve
involved
involves
iron
irregular
irrelevant
irresponsible
irritability
is
island
isn't
issue
it
italian
italy
item
its
itself
j
jack
january
job
join
joined
joint
joke
journal
journalist
journey
joy
judge
judges
judging
judgment
july
jump
june
jungle
junior
just
justice
justify
k
keen
keep
keeping
keeps
kept
key
keyboard
kick
kid
kill
killed
killing
kilometre
kind
kindly
kindness
king
kingdom
kitchen
knew
knife
knight
knighted
knock
know
knowing
knowledge
known
knows
l
lab
label
labeled
labor
laboratory
labour
lack
ladder
lady
lake
land
landfill
landlord
landmark
landowners
landscape
language
languages
large
largely
larger
largest
laser
last
late
later
latest
latter
laugh
laughable
laughing
laughter
launch
launched
law
lawn
lawyer
lay
layer
lazy
lead
leader
leadership
leading
leads
leaf
league
leak
lean
leap
learn
learned
learning
least
leather
leave
leaves
leaving
lecture
led
left
leg
legacy
legal
legend
legendary
leisure
lend
length
lens
less
lessen
lesson
let
letter
level
leverage
liar
liberal
liberty
librarian
library
license
lie
lies
life
lifestyle
lifetime
lift
light
lighten
lighting
like
likelihood
likely
likes
likewise
limit
limited
limits
line
lines
link
lion
list
listen
listed
literally
literary
literature
little
live
lived
lively
liver
lives
living
load
loaf
local
located
location
lock
lodge
log
logical
lone
lonely
long
longer
longest
look
looked
looking
looks
loom
lose
loser
loss
lost
lot
loud
love
lovely
lover
low
lower
loyal
luck
lucky
luggage
lump
lunch
lung
luxurious
luxury
m
machine
machinery
machines
mad
made
magazine
magic
magical
magwitch
maid
main
mainly
maintain
maintained
maintenance
major
majority
make
makes
making
male
mall
man
manage
management
manager
managing
manly
manner
manual
manufacturer
manufacturers
manufacturing
many
map
mapped
march
margin
marine
mark
market
marketing
marks
marriage
married
marry
marvelous
mask
mass
master
match
material
math
mathematics
matter
matters
mature
may
maybe
mayor
me
meal
mean
meaning
meaningful
means
meant
measure
measured
measures
meat
mechanic
media
medical
medication
medicine
medieval
mediocre
meditate
meditation
medium
meet
meeting
meets
member
members
membrane
memorable
memorial
memory
men
mental
mention
mentioned
menu
mercy
mere
merge
merit
message
met
metal
metaphor
method
methods
metre
metric
metropolitan
microwave
mid
middle
midnight
might
mild
military
milk
mill
million
mind
mine
mineral
miniature
minimum
minister
minor
minority
minute
minutes
mirage
mirror
misbehave
misbelief
miscarriage
mischief
misconception
miserable
misery
misjudge
mislead
misplaced
missing
mission
missionary
mistake
mistakes
mistreat
misunderstand
misused
mitigate
mix
mixture
mobile
mode
model
modern
modest
modification
modify
moment
moments
monday
money
monolingual
month
monthly
monument
moon
moral
more
moreover
morning
mosquito
mosquitoes
most
mostly
mother
motion
motivate
motivation
motives
motor
mount
mountain
mouse
mouth
move
moved
movement
movie
moving
much
mud
multicultural
multilingual
multimedia
multiple
multiply
multitude
museum
music
musical
musician
must
mustn't
mutual
my
myself
mysterious
mystery
myth
n
nail
name
named
namely
narrow
nation
national
nationalise
nationality
nationwide
native
natural
naturally
nature
naughty
navy
near
nearby
nearest
nearly
neat
necessarily
necessary
necessity
neck
need
needed
needle
needs
negative
negatively
neglect
neighbour
neighbourhood
neighbourly
neither
nephew
nervous
nervousness
net
network
never
nevertheless
new
newly
news
newspaper
next
nice
nickname
night
nine
no
noble
nobody
nod
noise
non
none
nonetheless
nonprofit
nor
normal
north
northern
nose
not
note
notebook
nothing
notice
noticed
notify
notion
noun
novel
november
now
nowadays
nowhere
nuclear
number
numerous
nurse
nut
nutrition
nutritional
o
o'clock
oasis
obesity
object
objective
objects
obligation
oblige
obscure
observation
observations
observe
obstacle
obstacles
obtain
obvious
obviously
occasion
occasional
occasionally
occupy
occur
occurred
occurs
ocean
october
odd
of
off
offend
offensive
offer
offered
office
officer
official
often
oh
oil
okay
old
older
oldest
olive
olympic
on
once
one
ones
only
onto
open
opened
opening
operate
operating
operation
operator
opinion
opportunity
oppose
opposite
opposition
optic
optical
or
orange
order
ordinary
organ
organic
organisation
organisations
organise
organized
origin
original
originally
origins
other
others
otherwise
our
ourselves
out
outcome
outdoor
outer
outline
outlook
output
outside
outstanding
over
overall
overcome
overflow
overlook
overrated
overwhelmed
owe
own
owner
ownership
p
pace
pack
package
page
paid
pain
painful
paint
painting
pair
palace
pale
paper
paragraph
parallel
parent
parents
park
parking
part
partial
participate
participation
particular
particularly
parties
partner
partnership
parts
party
pass
passage
passed
passenger
passengers
passing
passion
passionate
passive
past
paste
patch
path
patience
patient
pattern
pause
pave
pay
payment
peace
peaceful
peak
pen
penalty
pencil
people
per
perceive
percent
percentage
perception
perfect
perfection
perform
performance
performed
perhaps
period
permanent
permission
permit
persevere
person
personal
personality
personally
personnel
perspective
persuade
persuading
pessimistic
pet
petition
petroleum
pharaoh
phase
phenomenon
phone
phoned
photograph
phrase
physical
physician
piano
pick
picture
picturesque
piece
pieces
pile
pilot
pin
pioneer
pipe
piracy
place
places
plain
plan
plane
planet
plant
plants
plastic
plastics
plate
platform
play
player
players
playing
plays
please
pleased
pleasure
plenty
plot
plough
plug
plumber
plus
pocket
poem
poet
poetic
poetry
point
pointed
poison
poisonous
polar
police
policeman
policy
polish
polite
political
politics
pollute
pollution
poor
poorer
popular
population
port
pose
position
positive
possess
possessing
possession
possibility
possible
possibly
post
poster
postpone
pot
potential
poverty
powder
power
powerful
powering
practical
practically
practice
practiced
praise
pray
pre
precaution
preceding
precious
precise
predict
predictable
predicted
prefer
preference
pregnant
prejudice
preliminary
premature
premier
preparation
prepare
prepared
prescribe
prescription
presence
present
presented
presenting
preserve
president
press
pressing
pressure
pretend
pretty
prevent
previous
previously
price
pride
primary
prince
princess
principal
principle
print
printed
prior
priorities
priority
prison
prisoner
privacy
private
privilege
prize
probable
probably
problem
problems
procedure
proceed
process
processes
processor
proclaim
produce
produced
producer
product
production
productive
productivity
products
professor
profit
profitability
profitable
program
programme
progress
prohibit
project
projects
promise
promising
promote
prompt
proof
proper
properly
property
proportion
proposal
propose
proposed
prospect
protect
protection
protein
protest
proud
prove
proved
proven
provide
provided
provides
province
provision
psychology
public
publication
publicize
publicly
publish
pull
pump
punctual
punctuate
punctuated
punctuation
punish
punishment
pupil
purchase
pure
purpose
pursue
push
put
puzzle
q
qualifications
qualified
qualify
qualities
quality
quantity
quarrel
quarter
queen
queens
question
questions
quick
quickly
quiet
quit
quite
quota
quotation
quote
r
race
racial
radio
rag
rags
rail
rain
rainforest
raise
raised
raises
range
rank
rapid
rapidly
rare
rarely
rash
rate
rather
raw
reach
reached
reaches
read
readerreadily
reading
readings
ready
real
realise
realised
reality
realize
really
reap
rear
reason
reasonable
reasons
reassure
recall
receive
received
recent
recently
recession
recipe
recognition
recognize
recommend
recommendation
recommended
record
recorded
recover
recreation
recycle
recycled
recycling
reduce
reduced
reduces
reduction
refer
reference
refers
reflect
reform
refrain
refresh
refreshing
refrigerator
refuge
refuse
refused
regard
regardless
regards
regret
regular
regulations
rehabilitation
reign
reinforce
reject
rejected
relate
related
relates
relation
relationship
relative
relatives
relax
relaxation
relaxed
release
relevant
reliability
reliable
relieve
religion
religious
reluctant
rely
remain
remains
remarkable
remember
remembered
remind
remote
remove
removed
renewable
rent
renter
reopen
repair
repairing
repeat
repeated
replace
replacement
replay
reply
report
reporter
represent
represented
representing
repress
reproduce
republic
reputation
request
require
required
requirement
requirements
research
resemble
reserved
resident
resign
resilience
resist
resolve
resolved
resort
resource
resources
respect
respectively
respond
response
responsibility
responsible
rest
restaurant
restore
restrict
restrictions
result
resulted
resulting
results
resume
retail
retire
retired
retreat
return
reveal
revealed
revolution
revolutionary
reward
rewind
rich
rid
ride
ridicule
right
ring
rise
risen
rising
risk
risky
river
road
rob
robbery
robot
rock
role
roll
roof
room
root
rose
rough
round
route
routine
row
royal
rub
rubbish
rude
rule
rules
rumour
run
running
rural
rush
s
sack
sacred
sacrifice
sad
sadly
sadness
safe
safely
safety
sail
sailor
sake
salad
salary
sale
sales
saliva
salt
same
sample
sand
sarah
sat
satellite
satisfaction
satisfied
satisfy
saturday
sauce
save
saved
saving
savings
saw
say
saying
says
scale
scared
scary
scatter
scene
scenery
sceptical
schedule
scholar
scholarship
school
science
scientific
scientist
scientists
scissors
scold
scope
score
scramble
scratch
scream
screen
scroll
sculpture
sea
search
season
seat
second
secondary
secret
secretary
section
sector
secure
security
see
seed
seek
seem
seemed
seems
seen
seize
seldom
select
self
sell
seller
send
senior
sense
sensible
sensitive
sentence
sentences
separate
separated
september
series
serious
seriously
servant
serve
service
session
set
settle
settled
seven
several
severe
sex
shadow
shame
shape
share
shared
shark
sharp
she
shed
sheep
sheet
shelf
shell
shelter
shift
shine
ship
shirt
shock
shoe
shoes
shoot
shop
shopping
short
shortage
shorten
shortly
shot
should
shoulder
shouldn't
shout
show
showed
shower
shown
shows
shut
shy
sick
side
sides
sight
sign
signal
signature
significance
significant
significantly
silence
silent
silly
silver
similar
similarly
simple
simplify
simply
since
sincere
sincerely
sing
single
sink
sir
sister
sit
site
situation
six
size
ski
skill
skills
skin
skip
sky
slave
sleep
sleeping
slept
slide
slight
slim
slip
slow
slowly
small
smaller
smart
smash
smell
smile
smoke
smooth
snake
sneak
snow
so
soap
soar
social
societal
society
sociocultural
soft
software
soil
solar
sold
soldier
solution
solutions
solve
solved
some
somebody
someone
something
sometimes
somewhere
son
song
soon
sophia
sore
sorry
sort
sought
sound
source
south
southern
sovereign
soya
space
spain
spanish
spare
spark
speak
speaker
special
specialist
specific
specify
spectacular
speech
speed
spend
spending
spent
spice
spill
spin
spirit
spiritual
spite
split
spoil
spoken
sponsor
sport
spot
spray
spread
spring
square
squeeze
stability
stable
staff
stage
stain
stake
stale
stall
stamp
stand
standard
standing
star
stare
start
started
starts
state
stated
statement
states
station
statue
status
stay
staying
steadily
steady
steal
stealing
steam
steel
steep
steer
stem
step
steps
stereotype
stick
stiff
still
stimulate
stir
stock
stomach
stone
stop
stopped
stopping
storage
store
storm
story
straight
strain
strange
stranger
strategic
strategy
straw
strawberry
street
strength
stress
stressed
stressful
stretch
strict
strictly
strike
string
strip
stroke
strong
stronger
structure
structured
struggle
struggling
stubborn
stuck
student
students
studio
study
studying
stuff
stunt
style
subject
subjects
substance
substitute
subtle
suburbs
succeed
success
successful
successfully
such
sudden
suddenly
suffer
suffered
suffering
sufficient
sufficiently
sugar
suggest
suggested
suggestion
suit
suitable
suitability
suits
sum
summarize
summarises
summary
summer
summit
sun
sunday
sundried
sunlight
sunset
super
superior
supermarket
supper
supplies
supply
support
supported
supporting
suppose
supposed
supposing
surely
surface
surgeon
surgery
surprise
surprised
surprising
surprisingly
surround
surrounding
survey
survival
survive
suspect
suspected
suspend
suspicion
sustainable
swallow
swam
swap
sweat
sweep
sweet
swim
swimming
swing
switch
sympathise
sympathy
symptom
symptoms
system
t
tabloid
table
tackle
tail
tailor
take
taken
takes
taking
tale
talent
talented
talk
tall
tame
tan
tank
tape
target
taste
tax
taxi
tea
teach
teacher
teachers
teaching
team
tear
technical
technique
technological
technologically
technology
teen
teenager
tell
telling
tells
temperature
temple
temporarily
temptation
ten
tend
tendency
tension
tent
term
terms
terrible
terrific
territory
terror
test
text
than
thank
that
the
theatre
their
them
themselves
then
theory
there
therefore
these
they
thick
thief
thin
thing
things
think
thinking
third
thirty
this
those
though
thought
thoughts
thousand
threat
threaten
threatened
three
thrill
through
throughout
throw
thrown
thumb
thus
ticket
tide
tie
tiger
till
time
timely
times
tiny
tip
tired
tissue
title
to
today
together
toilet
tolerance
tolerant
tomato
tomatoes
tomorrow
ton
tone
tongue
tonight
too
tool
tooth
top
topic
torch
tornado
total
touch
tough
tour
tourism
tourist
toward
towards
tower
town
track
trade
trader
traditional
traditionally
traffic
trail
trailblazer
train
trained
trainer
training
trait
tramp
transfer
transform
transformation
translate
translation
transmission
transmit
transparent
transplant
transport
transportation
transporter
trap
travel
travelled
traveller
travels
treasure
treat
treated
treatment
tree
trees
tremendous
trial
trick
tricks
tried
trip
tropical
trouble
troublesome
truck
true
truly
trust
truth
try
trying
tube
tuesday
tuna
tunnel
turn
turned
turning
twelve
twenty
twin
twinkle
two
type
typical
u
ugly
ultimate
ultimately
umbrella
unable
unacceptable
unaffected
unanimous
unanswered
unashamed
unavoidable
unbearable
unbelievable
uncertain
uncertainty
uncomfortable
uncommon
unconscious
uncooperative
under
undergo
underline
underlined
underlying
understand
understanding
understands
underwater
unemployed
unemployment
unexpectedly
unfair
unfairly
unfamiliar
unfortunate
unfortunately
unfriendly
unhappier
unhappy
uniform
unimportant
uninfected
uninspired
unintentional
unique
unit
unite
united
unity
universal
university
unknown
unless
unlike
unlikely
unlucky
unnecessary
unpleasant
unprecedented
unprofitable
unqualified
unrealistic
unrelated
unreliable
unsafe
unsuccessful
until
unusual
up
update
upon
upper
upset
urban
urge
urgent
us
use
used
useful
useless
user
uses
using
usual
usually
utilities
v
vacant
vacation
vague
valley
valuable
value
values
van
vanish
variability
variable
varied
variety
various
vary
varying
vast
vegetable
vehicle
venture
venue
verb
verify
version
versus
very
vessel
veteran
via
vibrant
vice
victim
victory
video
view
viewers
village
villagers
violate
violation
violent
virtual
virtually
virtue
virus
visa
visible
vision
visit
visited
visiting
visitor
visual
vital
vitamin
vocabulary
voice
volume
voluntary
volunteer
vote
vulnerable
w
wage
wages
wait
waiting
wake
walk
walked
walking
wall
wallet
wander
want
wanted
wanting
war
ward
warm
warn
warning
was
wasn't
waste
wastes
watch
watching
water
wave
wavelength
way
ways
we
weak
wealth
wealthy
weapon
wear
wearing
weather
website
wedding
week
weekend
weekly
weep
weigh
weight
welcome
welfare
well
went
were
weren't
west
western
wet
what
whatever
wheel
when
whenever
where
whereas
whether
which
while
whisper
white
who
whole
whom
whose
why
wide
widely
widen
widespread
wife
wild
will
willing
win
wind
window
wine
wing
winner
winter
wisdom
wise
wish
with
within
without
witness
woman
women
won
wonder
wonderful
word
words
work
worked
worker
workers
working
workplace
workshop
world
worldwide
worry
worse
worship
worst
worth
worthwhile
worthy
would
wouldn't
wound
wow
wrap
write
writer
writes
writing
written
wrong
wrote
y
yard
year
years
yellow
yes
yesterday
yet
yield
you
young
younger
your
yours
yourself
youth
z
zero

a
a
about
above
abroad
absolutely
accept
achieved
achievement
acquainted
acted
action
active
actually
admit
admitted
admire
after
agatha
aggressive
ago
agreement
ahmed
aims
air
ali
all
already
also
although
always
am
ambition
ambitious
amnesia
amusement
an
ancient
and
angry
anniversary
another
answer
anyone
apologize
appear
appeared
applying
appointed
appreciate
are
arisen
army
around
arranged
arrived
as
asked
asking
assured
at
atmosphere
attach
attachment
attackers
audience
aunt
autobiography
available
avoid
award
away
b
back
badly
bank
bark
barriers
be
beach
became
become
becoming
been
before
begin
beginning
behind
being
believe
believed
belong
best
better
between
big
biography
birthday
black
blackmail
bleeding
blessing
blood
blue
boil
book
books
bored
boring
born
boss
both
bought
brake
branch
brave
breath
bride
bridge
bring
broaden
broke
broken
brother
brought
brown
build
building
built
burnt
bus
business
businesses
busy
but
buy
by
c
cairo
calculate
called
came
campus
can
cancer
cannot
captured
car
care
careful
carefully
cared
carve
carved
cause
caused
causes
cave
caves
celebrate
celebration
celebrity
ceremony
certain
certificate
change
changed
charge
charities
charles
check
cheaper
chinese
chronic
cinema
city
cliff
cliffs
client
climate
close
cloth
clothes
clothing
coast
colleague
collection
college
colour
coloured
come
comes
coming
communicate
community
commute
commuters
company
compare
competition
competitor
complained
completely
completed
compression
computer
concrete
confession
conflict
confused
confusion
connect
conscientious
conservative
considered
constituted
contains
contents
context
continuous
contribute
control
conversation
convince
cooking
correspondent
cost
costs
could
country
courage
course
crime
criminal
critical
critical
crop
crossed
cruel
cure
cures
curved
custom
cut
d
daily
damage
damages
danger
dangerous
date
dawn
day
dead
death
decision
defeated
denied
department
depression
described
desert
deserted
design
destination
destroy
destructive
determined
device
diabetes
diabetic
diameter
did
didn't
diet
diplomat
director
disease
dishes
distance
distinctive
distributive
district
do
doctor
does
doesn't
doing
done
door
download
draft
drank
drinking
drive
driver
drivers
driving
drop
drought
droughts
during
e
each
eagle
earlier
early
earth
earthquakes
ease
easily
easy
eclipse
economic
economy
effective
effects
effort
egypt
egyptian
either
electricity
electromagnetic
eliminate
employable
employees
employers
employment
empty
encourage
encouraged
encouraging
encyclopedia
end
energy
engine
engineer
english
enjoy
enjoyed
enjoying
enough
enroll
enrolling
enter
enthusiasm
enthusiast
enthusiastic
entirely
entry
envious
environment
eruption
especially
establish
established
even
evening
ever
every
everyone
everywhere
exam
examination
examine
examined
example
exams
excitement
exciting
exhausted
exhausting
expect
expectation
expected
experiments
expert
explanation
exploration
explore
explosion
exports
express
extracted
extremely
eye
f
face
fact
facts
fail
fair
fall
fallen
falling
famous
fan
far
farm
fashion
fast
fatal
father
fault
favour
favourite
fear
feel
feeling
feet
festival
fiction
fictional
fifth
fight
film
final
finally
finance
find
fire
fireworks
firm
first
fixed
flat
flood
floods
floor
flu
fluency
fluent
fluently
flush
flying
focus
folk
follow
following
food
football
for
force
forced
forecast
foreign
forest
forget
forgotten
fortunately
fortune
forum
forward
found
frame
france
free
frequent
friend
from
front
fuel
full
fun
funeral
furnished
furniture
future
g
gained
game
gasoline
general
generally
generate
genetically
geologist
get
gets
getting
gift
girl
give
given
giving
glad
glasses
go
goal
goes
going
gold
gone
good
got
government
gradually
graduate
graduating
grain
gravity
great
greatly
ground
grow
growing
grown
grows
h
habit
had
half
hand
handicapped
happen
happened
happiest
happy
hard
harder
hardly
harmful
has
hasn't
hate
have
haven't
having
he
health
healthy
hear
heard
heart
heat
heated
heavily
heavy
helicopter
help
helped
her
here
hers
herself
high
him
himself
his
historical
hold
holiday
home
homework
hope
hoping
horrible
hospital
hot
hours
house
how
huge
hundred
hundreds
i
idea
if
ignorant
ill
illiterate
illuminate
illustrate
image
imagination
imagine
impossible
impress
impressed
impression
impressive
in
incredible
industrial
influential
inform
information
innocent
innovative
inside
inspire
inspired
instead
instrument
instruments
interested
interesting
internet
interrogation
into
invasion
invented
invest
investment
invisible
invitation
invite
irresponsible
it
italy
its
itself
j
jacket
job
join
joined
journalist
joy
judge
july
june
just
k
keen
keep
kept
keys
killed
kind
king
kingdom
kissed
knew
knives
know
known
l
lack
lady
lake
land
landfill
landmark
landmarks
landscape
language
languages
laser
last
late
latter
launch
launches
law
lawyer
lazy
leak
leaks
leap
learn
leave
leaves
leaving
left
lend
lent
less
let
letter
licence
license
lie
life
light
lighten
lighting
lightning
lights
like
lion
literature
little
live
lived
living
lock
london
long
longer
look
looked
losing
lost
lot
love
lovely
low
lunch
luxor
m
machine
mad
magazine
mahfouz
main
make
makes
making
man
manager
many
marie
marked
marriage
massive
master
mature
may
me
mean
means
meant
medical
meet
meeting
memory
message
metal
metre
metres
midday
midnight
might
military
millions
mind
mislead
mission
missions
mistake
mobile
modernize
moment
money
moon
more
morning
most
mother
motion
motor
mountain
move
moved
movie
much
mum
murderer
musical
musician
must
mustn't
my
myself
n
naguib
name
national
natural
nearby
necessary
need
negative
neighbourhood
never
new
news
newspaper
next
nice
night
no
nobel
noise
north
not
noted
nothing
novel
novels
now
nuclear
nurses
o
object
objected
occur
occurs
of
off
offer
offered
often
oil
old
oliver
on
once
one
only
open
opening
opera
operation
opinion
or
other
our
out
outstanding
over
overload
own
p
pace
painted
palace
paper
paragraph
park
part
particular
pass
passage
passengers
passes
passing
past
pavement
people
per
perhaps
permanently
permission
permissible
person
personal
personality
personnel
persuade
petrol
petroleum
phenomena
phenomenon
phone
phones
piano
pioneer
play
played
player
plays
playwrights
please
pleased
plenty
poem
poetry
point
politics
pollution
population
position
positioned
positive
possible
post
potential
pounds
power
practically
practice
pray
predict
prefer
present
president
press
pressure
pretty
prevent
previous
primary
prisoner
prize
probably
problem
process
procession
produce
products
profession
professional
professors
profit
programme
progress
project
promised
promotion
prove
provide
publisher
publishing
pumps
push
pyramids
q
qualifications
qualified
qualify
quality
quantities
queen
question
quick
quickly
quiet
r
race
radio
rain
rainfall
raised
rare
reach
reached
read
reading
real
realized
really
reason
receive
received
recognize
recycle
recycled
reduce
refused
regarding
regularly
reinvented
relatives
remember
remembered
remove
renewable
rent
repair
repeated
replaced
report
reported
represent
representative
research
resembled
reserved
responsible
restaurant
results
returned
reward
rewarding
revising
revolution
revolutions
rewriting
right
rights
ring
rings
rise
risen
road
robot
rock
role
roll
roman
romans
room
root
roots
route
routine
royal
rule
run
rung
s
sad
safe
safeguard
safety
said
sailor
sale
sally
salt
same
sami
sat
save
saving
saw
saying
scare
scene
school
science
scientist
scientists
scorpion
sea
search
season
seat
secondary
secretary
see
seeing
seen
send
sent
separate
seriously
servant
service
set
settle
several
shakespeare
shame
sharpen
she
ship
shock
shoes
shopping
short
shorten
should
shouting
shower
shy
sick
sight
since
sink
sir
sister
situation
six
size
sky
slowly
small
smaller
so
sociable
sold
solo
some
someone
something
sometimes
soon
sorry
sound
source
space
speak
speaker
speaking
spent
spies
spokes
sport
squash
stadium
started
station
statue
stay
steel
step
steps
stick
still
stone
stopped
storm
storm
story
strange
street
streets
struck
strong
student
students
studied
study
style
submission
succeed
success
successfully
such
suffer
sufferers
suffered
sugars
sun
sunset
supervisors
surgeon
surprised
survive
sweat
sweets
swimming
t
take
takes
taking
talk
tall
tamer
tank
taste
teacher
teaching
team
technology
television
tell
temple
temporarily
ten
tennis
tension
terrible
test
tested
than
that
the
theatre
their
them
themselves
then
theory
there
these
they
thing
things
think
this
those
though
thought
thousand
threat
through
thunder
ticket
time
tired
to
today
together
told
tomorrow
too
took
tool
tools
tooth
top
tour
tourism
tourist
town
traditional
traffic
train
training
translated
travel
travelled
travels
treated
treatment
tree
trees
trip
trouble
truly
trunk
truth
try
tunnel
turpentine
tv
twenty
two
type
u
ultraviolet
unable
under
underground
understand
understanding
unemployment
unexpected
unfortunately
unfriendly
unknown
unless
unlike
unpleasant
unrealizable
until
unthinkable
up
upload
upon
use
used
useful
useless
uses
using
usually
v
valuable
victoria
violence
visible
visit
visiting
visitor
volcanoes
votes
w
waist
wait
waiting
walk
walking
wall
want
wanted
watching
water
way
we
wear
weather
wedding
week
weekend
weight
weightless
weightlessness
well
went
were
what
when
where
whether
which
while
who
whole
whom
whose
why
wide
widen
will
win
wind
window
winner
winter
wisdom
wish
with
without
witness
woman
women
won
wood
word
work
worked
workers
working
world
worldwide
worse
worthwhile
would
write
writer
writes
writing
written
wrote
y
year
years
yesterday
yet
you
young
your
yours
youth
z
zenda

a
a
about
above
abroad
absorbs
according
achieve
achieved
achievement
act
acted
action
actually
admit
admitted
adopt
advance
advantage
adventure
advice
advise
affair
africa
after
afternoon
again
against
age
agency
agreed
agreement
ahmed
aim
albert
ali
all
allow
allowed
already
also
although
always
am
amazing
ambassador
ambitious
amnesia
amount
an
ancient
and
angry
animal
animals
anniversary
another
answer
answers
anyone
anything
appearance
appeared
applicants
application
applied
apply
appointment
appreciate
approach
archaeologists
are
argue
arise
around
arrange
arranged
arrives
as
asked
asleep
association
assume
assured
astonished
at
atmosphere
attach
attached
attachment
attack
attend
attending
audience
aunt
authentic
available
average
avenge
avoid
award
awarded
away
b
back
bad
badly
bank
bark
base
based
be
beach
bear
beat
became
because
become
been
before
begin
beginning
begins
behind
being
believe
believed
believer
belong
below
besides
best
better
between
biography
birthday
bit
bitten
black
blizzard
blood
blue
boat
body
boil
book
books
bored
boring
both
boss
bother
bought
branch
brave
break
breathing
bridge
bright
bring
broken
brother
brown
build
building
built
bullying
burdens
burst
bus
business
businesses
busy
but
buy
by
c
cairo
came
can
can't
cancer
candle
capable
captured
car
car
carbon
care
career
careful
carry
carved
castle
cat
caught
cause
causes
cave
celebrate
celebration
celebrity
cells
centre
ceremony
certain
challenging
change
character
charitable
charge
chasers
cheaper
chest
child
childish
children
choice
christmas
citizen
city
class
clean
cleaned
clear
climate
client
cliffs
coffee
cold
collect
collection
college
colour
combination
come
comes
coming
commit
committing
common
communicate
communicating
commuters
company
competition
competitors
complain
complaining
complete
completed
completing
complex
complicated
computer
concentrate
concentration
conclusions
concrete
condition
conference
confident
confirm
confused
confusing
connect
connection
conscientious
consequences
consider
consult
contact
contain
contemporary
continue
contribute
control
convince
cooked
correspondent
cost
costs
could
country
course
crash
creatures
creative
crime
criminal
cruelly
cry
cultural
culture
cup
curtains
customary
cut
d
daily
dam
damage
damaged
dark
date
daughter
day
dead
deal
deal
dear
death
decide
decided
decorate
deep
deleted
demand
dentist
department
depend
depends
depression
deserve
desert
desire
desk
destination
destructive
detective
develop
development
diabetes
diabetic
diameter
dictionary
did
didn't
diet
different
difficult
dinner
diplomat
director
disappointed
discipline
discount
discouragement
discuss
disease
dismiss
distance
distinctive
distinguished
distribute
district
diver
divers
do
doctor
does
doesn't
doing
done
door
doubt
down
download
downloaded
dozen
draft
draw
drawer
dream
drill
drink
drinking
drive
driver
drivers
driving
drought
droughts
during
e
each
eagle
early
earth
earthquakes
ease
easier
easily
east
easy
eat
eating
eclipse
eclipses
economic
economy
education
effect
effects
effective
effort
egypt
egyptian
either
elderly
electricity
electromagnetic
eliminate
else
emergency
emission
emissions
emotions
employ
employed
employees
employers
employment
empty
encyclopedia
end
endangered
ending
enemies
energy
engagement
engine
engineering
english
enjoy
enjoyed
enough
enroll
enrolled
enrolling
enter
entered
enthusiastic
entire
entry
environment
equipment
eras
error
escape
especially
established
europe
even
ever
every
everybody
everyone
everything
evidence
evolved
exactly
examination
examine
examined
example
exams
excited
excitement
exciting
expect
expected
expects
experiment
experiments
expert
explain
explanation
exploration
explore
explosion
exports
express
expression
extracted
extra
eye
f
face
facts
fail
failed
fair
fall
fallen
falling
false
family
famous
fanatic
far
farm
farmers
fashion
fast
father
fatherly
fault
favourite
fear
feel
feeling
feet
festival
fetch
few
fiction
fictional
field
fifth
fight
fighters
file
film
films
final
finally
find
finding
finish
finished
fire
firemen
fireworks
firm
first
fishermen
fit
five
fix
fixed
flash
flat
flood
floods
floor
flu
fluency
fluent
fluently
fly
flying
folk
follow
following
food
football
for
force
forced
foreign
forecast
forest
forget
forgotten
form
formal
forms
fortune
forward
fossil
found
four
frame
free
freelance
fridge
friend
friends
from
front
fruit
fuel
full
fun
future
g
gained
gale
game
gap
gas
gave
generate
geyser
girl
give
given
giving
go
goal
goes
going
gold
gone
good
goods
got
government
gradually
graduate
graduated
graduating
grain
grandfather
grass
gravity
great
greatly
grow
grown
grows
guard
guests
gymnastics
h
habit
had
hair
half
hamlet
hand
handicapped
happen
happened
happens
happy
hard
hardens
hardly
harmful
has
hasn't
have
haven't
having
he
head
health
hear
heard
heart
heat
heavily
height
helmet
help
helped
her
here
herself
high
him
himself
his
hit
hold
hole
holes
holiday
home
homework
honest
hope
hopes
horrible
hospital
hot
hour
house
how
huge
human
hundred
hurt
husband
i
idea
ideal
if
ignorant
ill
illiterate
illness
illuminated
image
imagination
imagine
impossible
impression
impressive
in
incident
independence
india
inefficient
industry
influence
influential
inform
information
injured
inquiry
insect
insist
insistent
inspiration
install
instead
instruments
insult
insurance
intention
interest
interesting
interfere
international
internet
interrupt
interview
interviewee
into
invasion
invented
investigation
investment
invisible
invitation
invite
involve
iraq
is
isn't
it
italy
its
itself
j
job
join
joined
journalist
joy
july
june
justice
k
keen
keep
keeps
keys
kid
kill
killed
kilometer
kind
king
kingdom
knew
know
known
l
labour
lack
lake
lakes
land
landfill
landmarks
landscape
language
laser
last
late
laugh
law
lawyer
leads
leaf
leak
leaked
leaks
learn
leave
leaves
leaving
left
legal
leisure
lend
length
let
letter
liberty
library
licence
life
light
lighten
lighting
lightning
like
likely
link
listen
lived
liverpool
living
load
local
lock
London
long
longer
look
looked
lose
lost
lot
love
lovely
low
luck
lunch
lungs
luxor
m
machine
machinery
mad
magazine
magnetic
main
maintain
make
makes
making
man
manager
many
map
mark
marked
marks
massive
master
masts
mature
may
me
meal
mean
means
meant
medical
meet
meeting
memory
mention
mercy
met
metal
metres
mexico
midday
might
military
millions
mind
mine
missed
mission
missions
mistake
mix
mobile
modern
moment
money
monkey
monuments
moon
more
morning
most
mother
motorcycle
mountains
move
movie
much
murder
murderer
music
musical
must
mustn't
my
myself
n
naked
name
national
natural
naughty
near
nearby
necessary
need
needn't
needs
negative
neither
never
new
news
newspaper
next
nice
night
no
nobody
noise
noon
north
northern
not
noted
nothing
novel
now
nuclear
nurse
o
objected
objects
obligatory
observation
observed
obstacle
occasion
occur
of
off
offer
office
officer
often
oil
old
on
once
one
only
open
opening
operation
opinion
or
orange
orbit
order
other
others
otherwise
our
out
outlet
over
overcome
own
p
pain
paint
painting
paper
parents
park
part
particular
party
pass
passengers
passing
passive
past
patience
pay
peace
pearl
people
per
performance
perhaps
period
permanent
permission
persist
person
personal
personality
persuade
pets
phenomenon
phone
photograph
piano
pills
pioneer
place
placed
plan
plane
planet
plants
plastic
play
played
player
players
playground
plays
playwright
please
pleased
pleasure
poem
poetry
point
poles
police
policy
pollution
popular
population
position
positive
possible
post
pounds
power
practical
pray
predict
predicted
preparation
presence
present
presentation
press
pressure
prevent
previous
price
prize
probably
problem
process
procession
produce
produced
producer
product
production
products
profession
professional
professor
profit
programme
progress
project
promised
promising
promotion
prompt
proof
property
protection
prove
provide
publication
publicity
publish
published
publisher
punctures
punish
punished
pyramids
q
qualifications
qualified
qualify
quality
question
quick
quickly
quiet
r
race
radioactive
rain
rainy
raise
raised
rays
reach
reached
read
reading
ready
real
realise
realize
really
reason
receive
recently
recognise
recommended
record
recover
recycled
red
reform
refuse
refused
regard
regular
regularly
related
release
released
relevant
reliable
religion
remain
remember
remembered
remind
remind
reminded
removed
rent
repair
repeat
replaced
replacement
reply
report
reported
reporter
reputation
request
research
residents
resistance
respect
respectable
respected
respond
responsibility
responsible
restaurant
result
results
retirement
retired
revising
reward
rewarding
rich
right
rights
ring
rings
rise
risen
risk
river
road
role
roll
roller
roots
route
routine
rule
rules
run
s
sad
safari
safe
safely
safety
said
sailor
salad
sale
sally
salt
same
sandstorm
sat
satellite
satisfy
save
saved
saw
say
saying
scene
school
science
scientist
scientists
score
sea
search
season
secondary
secretary
see
seeing
seen
sensible
separate
serious
service
session
set
settle
seven
several
shadow
shall
shame
share
sharpen
she
shelter
shipwrecked
shirt
shock
shoes
shopping
short
shorten
should
shouldn't
shout
showed
shut
sick
sight
sign
signal
silence
silk
since
sink
sister
situation
six
size
skills
sky
sleep
sleepy
slowly
small
smash
smoke
smooth
snow
snowy
so
social
sociable
solar
soldiers
solo
solve
some
someone
something
sometimes
son
soon
sorry
south
southern
space
spacecraft
spain
spare
spark
speak
special
speech
spent
spin
spokes
sport
squash
staff
stamina
stand
star
start
started
starts
state
station
statue
stay
steel
step
still
stinging
stomach
stone
stop
stopped
store
storm
storm
story
strange
street
streets
strict
strong
student
students
study
style
succeed
success
successful
such
suffer
suffering
sugar
suggest
suit
suitable
summarize
sun
sunbathe
sunbeam
sunburn
sunlight
sunset
supplies
suppose
sure
surprised
survive
suspect
suspected
sustainable
swim
system
t
table
take
taken
takes
taking
talent
talk
tall
tank
taste
tax
tea
teach
teacher
team
tears
tell
temple
tennis
tension
test
than
thank
that
the
their
them
themselves
then
theory
therapy
there
these
they
thief
think
thinking
this
those
though
thought
threat
threaten
threatened
three
through
throw
thunder
tidy
time
tired
to
today
together
toil
told
tomorrow
tonight
too
took
tool
tools
tooth
top
touch
tough
tour
tourist
towards
town
traditional
traffic
train
training
translated
travel
travelled
treat
treated
treatment
tree
trees
trip
troops
trouble
true
truly
trunk
trust
truth
try
tube
tubes
tunneling
turpentine
tv
twenty
twins
two
type
u
ultraviolet
unable
unavailable
uncle
uncomfortable
under
underground
understand
unemployed
unemployment
unexpected
unfair
unfriendly
unhappy
unimportant
uninformed
uninteresting
united
university
unless
unlike
unrealistic
unrecognizable
unthinkable
until
unusual
up
upload
uploaded
upon
upset
urban
us
use
used
useful
useless
uses
using
usually
v
vain
vary
vegetables
victoria
view
village
violin
visible
visit
visiting
visitor
vitamin
voice
volcanoes
voluntary
volunteer
vow
w
wages
wait
waiter
waiting
walk
wall
want
wanted
war
warm
warn
was
wasn't
waste
watch
watching
water
waves
way
we
wealthy
wear
wearing
weather
wedding
week
weekend
weight
weightlessness
well
went
were
western
what
wheel
when
where
which
while
whisper
white
who
whole
whom
whose
why
wide
widens
wife
will
win
wind
windiest
window
windy
winner
winter
wish
with
without
witness
woman
women
won
wood
word
work
worked
working
workplace
world
worlds
worldwide
worry
worse
worthwhile
would
write
writer
writes
writing
written
wrote
y
year
yellow
yes
yesterday
yet
you
young
your
yours
youth
z
zawail
zenda
zoo
