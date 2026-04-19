;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
;; vim: set syntax=lisp:

;;{{{                    MARK:layers
;;**************************************************************
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     perl5
     typescript
     go
     windows-scripts
     helm
     emacs-lisp
     vimscript
     systemd
     yaml
     shell-scripts
     multiple-cursors
     treemacs
     javascript
     latex
     erc
     ruby
     csv
     lua
     ocaml
     swift
     erlang
     haskell
     ruby-on-rails
     ansible
     asm
     react
     django
     scala
     git
     docker
     terraform
     search-engine
     elixir
     github
     rust
     c-c++
     sql
     python
     markdown
     slack
     gtags
     chrome
     fasd
     tmux
     shell
     themes-megapack
     spotify
     slack
     nginx
     clojure
     emacs-lisp
     common-lisp
     html
     osx
     org
     syntax-checking
     version-control
     colors
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
      (auto-completion :variables
            auto-completion-return-key-behavior 'complete
            auto-completion-idle-delay 3
            auto-completion-tab-key-behavior 'cycle
            auto-completion-enable-help-tooltip t
            auto-completion-enable-snippets-in-popup t
            auto-completion-enable-sort-by-usage t
            )
      (colors :variables
            colors-colorize-identifiers 'all
            colors-enable-nyan-cat-progress-bar t)
      (version-control :variables
                version-control-diff-side 'left
                version-control-diff-tool 'git-gutter+)

     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
           realgud
           realgud-pry
           yasnippet
           yasnippet-snippets
           ag
           helm-ag
           helm-rg
           helm-file-preview
           helm-git-grep
           doom-themes
           helm-git
           helm-git-files
           helm-google
           helm-fuzzy
           helm-z
           evil-snipe
           evil-surround
           evil-collection
           emamux
           company-ycmd
           real-auto-save
           fzf highlight-symbol
           highlight-indent-guides
           ctags-update
           company-plsense
           noflet
           company-ctags
           company-ycm
           perspective
           all-the-icons
           wakatime-mode
           spaceline-all-the-icons
           (company-quickhelp :location (recipe :fetcher github :repo "ahungry/company-quickhelp"))
           (helm-fasd :location (recipe :fetcher github :repo "ajsalminen/helm-fasd"))
           popup
           plsense
           )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))
;;}}}***********************************************************

;;{{{                    MARK:spacemacs init
;;**************************************************************
(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style '(vim :variables
                                vim-style-retain-visual-state-on-shift	t
                                vim-style-visual-feedback	t
                              )
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(ujelly alect-dark dracula)
   ;; the status bar/modeline
   dotspacemacs-mode-line-theme '(all-the-icons :separator arrow)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Hack Nerd Font"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "@Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout t
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 20
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   dotspacemacs-server-socket-dir "~/.emacs/server"
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))
   ;;}}}***********************************************************

;;{{{                    MARK:user init
;;**************************************************************
(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
    (message "start user-i")

    
    ;;{{{                    MARK:evil-collection init
    ;;**************************************************************
    ;; This is optional since it's already set to t by default.
    (setq evil-want-integration t)
    (setq evil-want-keybinding nil)
    ;;}}}**************************************************************
    
    ;;{{{                    mark:init vars
    ;;**************************************************************
    (setq vc-follow-symlinks t)
    ;;}}}**************************************************************

    ;;{{{                    MARK:zpwr vars
    ;;**************************************************************
    (defvar zpwr/inc 4 "motion size when ctrl key held")
    (defvar zpwr/as-interval 0.9 "interval between auto saves")
    (defvar zpwr-snippets-dir "~/.emacs.d/private/snippets/zpwr-snippets" "private snippets dir for zpwr")
    ;;}}}***********************************************************

    ;;{{{                    MARK:tokens
    ;;**************************************************************
    (when (load "~/.emacs.d/private/.tokens.el" t)
        (message "loaded private tokens")
        (setq erc-interpret-mirc-color t)

        (if (boundp 'irc-gitter-nick)
         (progn
            (setq erc-autojoin-channels-alist '(("gitter.im" "#syl20bnr/spacemacs")))
            (defun zpwr/gitter-spacemacs ()
             "Connect to Spacemacs Gitter"
                (interactive)
                (progn
                    (erc-tls :server "irc.gitter.im" :port "6697" :nick irc-gitter-nick :full-name irc-gitter-name :password irc-gitter-pwd)
                )
            )
            (spacemacs/set-leader-keys (kbd "ais") #'zpwr/gitter-spacemacs)
          )
         )
     )
    ;;}}}***********************************************************

    ;;{{{                    MARK:message buffer timestamps
    ;;**************************************************************
    (defun zpwr/current-time-microseconds ()
    "Return the current time formatted to include microseconds."
        (let* ((nowtime (current-time))
            (now-ms (nth 2 nowtime)))
        (concat (format-time-string "[%Y-%m-%dT%T" nowtime) (format ".%d]" now-ms))))

    (defun zpwr/add-timestamp-message (FORMAT-STRING &rest args)
        "Advice to run before `message' that prepends a timestamp to each message."

        (unless (string-equal FORMAT-STRING "%s%s")
            (let ((deactivate-mark nil)
                (inhibit-read-only t))
            (with-current-buffer "*Messages*"
                (goto-char (point-max))
                (if (not (bolp))
                (newline))
                (insert (zpwr/current-time-microseconds) " ")))))

    (advice-add 'message :before 'zpwr/add-timestamp-message)
    ;;}}}***********************************************************

    ;;{{{                    MARK:zpwr func
    ;;**************************************************************

    (defun zpwr/show-messages ()
     "Switch to *Messages* Buffer"
     (interactive)
     (cond
      ((string= (buffer-name) "*Messages*") 
       (progn
            (spacemacs/alternate-buffer)
        ))
      (t
       (progn
            (switch-to-buffer "*Messages*")
        ))
       )
    )

    (defun zpwr/flatten (mylist)
        "flattens list"
        (cond
            ((atom mylist) (list mylist))
            ((null (cdr mylist)) (zpwr/flatten (car mylist)))
            (t (append (zpwr/flatten (car mylist)) (zpwr/flatten (cdr mylist))))
        )
    )

    (defun zpwr/undo-all ()
        "Undo all edits."
        (interactive)
        (when (listp pending-undo-list)
            (undo))
        (while (listp pending-undo-list)
            (undo-more 1))
        (message "Buffer was completely undone"))

    (defun zpwr/replaceHelper (left right)

      (let ((mylist nil) (flattened nil) (cmd (concat "%s@\\C\\<" left "\\>@" right "@g")))
         (progn
          (setq mylist '())
          (add-to-list 'mylist (listify-key-sequence cmd) t)
          (add-to-list 'mylist (listify-key-sequence (kbd "<left><left>")) t)
          (setq flattened (apply 'append mylist))
            (save-excursion
             (evil-ex cmd)
          ;;(setq unread-command-events flattened)
            )
         )
        )

    )

    (defun zpwr/replace ()
      "Replace word under cursor"
      (interactive)
      (zpwr/replaceHelper (current-word) "")
    )

    (defun zpwr/replaceFill ()
      "Replace word under cursor"
      (interactive)
      (zpwr/replaceHelper (current-word) (current-word))
    )

    (defun zpwr/extract-fold (section)
        "Surround region with comment section block."
        (interactive "sThe Section Header: ")

        ;;{{{                    mark:getCommentChar
        ;;**************************************************************
        (cond
         ((derived-mode-p 'zsh-mode 'sh-mode 'python-mode 'perl-mode 'cperl-mode 'ruby-mode 'yaml-mode 'awk-mode) (setq comment "#"))
         ((derived-mode-p 'java-mode 'js-jsx-mode 'js2-mode 'c-mode 'c++-mode) (setq comment "//"))
         ((derived-mode-p 'inferior-emacs-lisp-mode 'emacs-lisp-mode 'lisp-mode) (setq comment ";;"))
         ((derived-mode-p 'vimrc-mode) (setq comment "\""))
        )
        ;;}}}**************************************************************

        (progn
            (setq sec (concat comment "{{{                    MARK:" section "\n"))
            (setq start (concat comment "**************************************************************"))
            (setq end (concat comment "}}}**************************************************************"))
            (evil-goto-mark-line ?<)
            (evil-open-above 1)
            (evil-open-above 1)
            (evil-next-line)
            (insert sec)
            (insert start)
            (evil-goto-mark-line ?>)
            (evil-open-below 1)
            (evil-open-below 1)
            (evil-previous-line)
            (insert end)
            (evil-goto-mark-line ?<)
            (evil-next-line)
            (evil-next-line)
            (evil-next-line)
            (evil-first-non-blank)
            (evil-scroll-line-to-center (line-number-at-pos))
            (evil-force-normal-state)
            (message "done")
        )
     )


    (defun zpwr/bypass-confirmation-all (function &rest args)
        "Call FUNCTION with ARGS, bypassing all prompts.
        This includes both `y-or-n-p' and `yes-or-no-p'."
        (noflet
            ((y-or-n-p    (prompt) t)
            (yes-or-no-p (prompt) t))
            (apply function args)))

    (defun zpwr/get-file-name ()
        "Get the full path file name into the echo area."
        (buffer-file-name (window-buffer (minibuffer-selected-window)))
    )

    (defun zpwr/insert-file-name ()
        "Insert the full path file name into the current buffer."
        (interactive)
        (insert (zpwr/get-file-name))
     )


    (defun zpwr/print-file-name ()
        "Print the full path file name into the echo area."
        (interactive)
        (message (zpwr/get-file-name))
    )

    (defun zpwr/doc-no-focus ()
      "Get doc but keep focus"
      (interactive)
        (let ((win (selected-window)))
          (progn

            (cond
                (   (derived-mode-p 'inferior-emacs-lisp-mode 'emacs-lisp-mode 'lisp-mode)
                    (elisp-slime-nav-describe-elisp-thing-at-point (elisp-slime-nav--read-symbol-at-point))
                )
                (   t
                    (spacemacs/evil-smart-doc-lookup)
                )
            )

            ;;(;message (concat "window => " (format "%s" win)))
            (ignore-errors
              (progn
                (if (string= (buffer-name (window-buffer)) "*Help*")
                    (select-window win)
                    ;;(message (concat "not help => " (buffer-name (window-buffer))))
                )
              )
            )
          )
      )
    )

    (defun zpwr/undohunk ()
      "Reset the git hunk"
     (interactive)
     (zpwr/bypass-confirmation-all #'spacemacs/vcs-revert-hunk)
     (evil-scroll-line-to-center)
    )

    (defun zpwr/copy-to-clipboard ()
      "Copies selection to system clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (message "Yanked region to clipboard!")
            (call-interactively 'clipboard-kill-ring-save)
            )
        (if (region-active-p)
            (progn
              (shell-command-on-region (region-beginning) (region-end) (concat "perl -0pe 's@^\\s+@@;s@\\s+$@@' | " (getenv "ZPWR_COPY_CMD")))
              (message "Yanked region to clipboard!")
              (deactivate-mark))
          (message "No region active; can't yank to clipboard!")))
      )

    (defun zpwr/paste-from-clipboard ()
      "Pastes from system clipboard."
      (interactive)
      (progn
        (if (display-graphic-p)
            (progn
                (clipboard-yank)
                (message "graphics active")))
        (insert (shell-command-to-string (getenv "ZPWR_PASTE_CMD"))))
      )

    (defun zpwr/inhibit-sentinel-messages-echo-area (fun &rest args)
    "Inhibit messages in all sentinels started by fun."
    (cl-letf* ((old-set-process-sentinel (symbol-function 'set-process-sentinel))
         ((symbol-function 'set-process-sentinel)
          (lambda (process sentinel)
        (funcall
         old-set-process-sentinel
         process
         `(lambda (&rest args)
            (let ((inhibit-message t))
              (apply (quote ,sentinel) args)))))))
        (apply fun args)))

    (defun zpwr/inhibit-sentinel-messages-buffer (fun &rest args)
    "Inhibit messages in all sentinels started by fun."
    (cl-letf* ((old-set-process-sentinel (symbol-function 'set-process-sentinel))
         ((symbol-function 'set-process-sentinel)
          (lambda (process sentinel)
        (funcall
         old-set-process-sentinel
         process
         `(lambda (&rest args)
            (cl-letf (((symbol-function 'message) #'ignore))
              (apply (quote ,sentinel) args)))))))
        (apply fun args)))

    (defun zpwr/runner  ()
     "Run current buffer in tmux pane to right"
     (interactive)
      (let ( (cmd (concat "tmux send-keys -t right C-c '" "bash " (getenv "ZPWR_SCRIPTS") "/runner.sh " (zpwr/get-file-name) "' C-m")) )
           ;;(message (concat "tmux runner => " (symbol-value 'cmd)))
             (save-window-excursion
              (zpwr/inhibit-sentinel-messages-echo-area #'async-shell-command
                (symbol-value 'cmd))
           )
      )
    )

    (defun zpwr/complete-current-statement ()
     "Complete the current statement based on language"
     (interactive)
     (progn
        (cond
         ((derived-mode-p 'zsh-mode 'sh-mode 'python-mode 'ruby-mode 'yaml-mode 'vimc-mode) (setq toInsertChar ""))
         ((derived-mode-p 'java-mode 'js-jsx-mode 'js2-mode 'perl-mode 'cperl-mode 'c-mode 'c++-mode 'awk-mode) (setq toInsertChar ";"))
         ((derived-mode-p 'inferior-emacs-lisp-mode 'emacs-lisp-mode 'lisp-mode) (setq toInsertChar ""))
         (t (setq toInsertChar ""))
        )

        (setq lastChar (substring (string-trim (buffer-substring-no-properties (line-beginning-position) (line-end-position))) -1))

        (message (concat "last char-> '" lastChar "'"))

        (cond
         ((and (string= toInsertChar ";")(string= lastChar "{"))
          (setq toInsertChar "")
          )
         ((string= lastChar ";") (setq toInsertChar ""))
        )

        (message (concat "toInsertChar-> '" toInsertChar "'"))


        (if (not (string= toInsertChar ""))
          (progn
            (evil-append-line 1)
            (insert toInsertChar)
           )
        )

        (end-of-line)
        (evil-insert-state)
        (newline-and-indent)

      )

    )

    (defun zpwr/local-set-minor-mode-key (mode key def)
        "Overrides a minor mode keybinding for the local
        buffer, by creating or altering keymaps stored in buffer-local
        `minor-mode-overriding-map-alist'."
        (let* ((oldmap (cdr (assoc mode minor-mode-map-alist)))
                (newmap (or (cdr (assoc mode minor-mode-overriding-map-alist))
                            (let ((map (make-sparse-keymap)))
                            (set-keymap-parent map oldmap)
                            (push `(,mode . ,map) minor-mode-overriding-map-alist)
                            map))))
            (define-key newmap key def))
    )

    (defun zpwr/kill-other-buffers ()
        "Kill all other buffers."
        (interactive)
        (mapc
            (lambda (buf)
                (let ((name (buffer-name buf)))
                    (cond
                        ((eq ?\s (aref name 0)) nil)
                        ((eq buf (current-buffer)) nil)
                        ((string= name "*Messages*") nil)
                        (t
                            (progn
                             (ignore-errors
                                (kill-buffer buf)
                              )
                                ;;(print (concat "killing =>" name))
                            )
                        )
                    )
                )
            )
            (buffer-list)
       )
    )

    ;;}}}***********************************************************


    ;;{{{                    MARK:Setup shell company backends
    ;;**************************************************************

    (defun zpwr/compHook ()
     "Company completion hook"
     (progn
        (setq-local completion-ignore-case t)
        (setq-local company-ctags-fuzzy-match-p t)
        (setq-local company-ctags-ignore-case t)
        (setq-local pcomplete-ignore-case t)
        (setq-local company-dabbrev-downcase nil)
        (setq-local company-dabbrev-code-ignore-case t)
        (setq-local company-dabbrev-ignore-case t)
        (global-set-key (kbd "C-SPC") 'company-complete)
        (local-set-key (kbd "C-SPC") 'company-complete)
        (message "company init done")
     )
    )

    (defun zpwr/shHook ()
     "Company completion shell script hook"
     (progn
        (setq company-backends-sh-mode
         '(
             (company-dabbrev-code
                company-dabbrev
                company-ctags
                company-shell-env
                company-files
                company-keywords
                :with
                company-yasnippet)
           )
         )
        ;;(message "shell init done")
      )
    )
    ;;}}}***********************************************************

    ;;{{{                    MARK:indent guides
    ;;**************************************************************
    (defun zpwr/HL ()
     "Auto highlight hook"
         (progn
            ;(highlight-indent-guides-mode)
            ;;(message "highlight indent guides init done")
          )
     )
    ;;}}}***********************************************************


    ;;{{{                    MARK:programming
    ;;**************************************************************
    (defun zpwr/lispSetup()
     "lisp setup hook"
         (progn
            (define-key evil-normal-state-map (kbd "K") #'zpwr/doc-no-focus)
            (message "lisp hook")
        )
    )

    (defun zpwr/slimeSetup()
     "slime setup hook"
         (progn
            (message "slime hook")
        )
    )

    (defun zpwr/visualMarkSetup()
        "Visual mark Setup"
        ;;(evil-visual-mark-mode)
        ;;(setq evil-visual-mark-exclude-marks nil)

    )

    (defun zpwr/evilNormalStateSetup()
     "Programming setup hook"
         (progn
            (define-key evil-normal-state-local-map (kbd "C-j") #'zpwr/down-four)
            (define-key evil-normal-state-local-map (kbd "C-k") #'zpwr/up-four)
            (define-key evil-normal-state-local-map (kbd "C-h") #'zpwr/right-four)
            (define-key evil-normal-state-local-map (kbd "C-l") #'zpwr/left-four)
            (define-key evil-normal-state-local-map (kbd "C-s") #'helm-swoop)
            (define-key evil-normal-state-local-map (kbd "gd") #'spacemacs/jump-to-definition)
            ;;(message "evil normal setup done")
        )

    )
    (defun zpwr/progSetup()
     "Programming setup hook"
         (progn
            (set-display-table-slot standard-display-table 'wrap ?\ )
            (visual-line-mode)
            (define-key evil-normal-state-local-map (kbd "K") #'zpwr/doc-no-focus)
            (message "prog setup done")
        )
    )
    ;;}}}***********************************************************

    ;;{{{                    MARK:auto save
    ;;**************************************************************
    (defun zpwr/AS ()
     "Auto save setup hook"
         (progn

           ;; in seconds
            (setq real-auto-save-interval (symbol-value 'zpwr/as-interval))
            (real-auto-save-mode)
            (message "real autosave init done")
        )
    )
    ;;}}}***********************************************************


    ;;{{{                    MARK:hook wrappers
    ;;**************************************************************
    (defun zpwr/evilifiedHook ()
     "Evilified setup hook"
     (progn
        (message "evilified hook")
        (define-key evil-evilified-state-map (kbd "C-j") #'zpwr/down-four)
        (define-key evil-evilified-state-map (kbd "C-k") #'zpwr/up-four)
        (define-key evil-evilified-state-map (kbd "C-h") #'zpwr/right-four)
        (define-key evil-evilified-state-map (kbd "C-l") #'zpwr/left-four)
        (define-key evil-evilified-state-local-map (kbd "C-s") #'helm-swoop)
      )
    )

    (defun zpwr/indentHook ()
     "Indent setup hook"
         (zpwr/HL)
    )

    (defun zpwr/perlHook ()
     "Perl Programming setup hook"
     (progn
        (message "perl init done")
     ))

  (defun zpwr/reload ()
     "Reload Programming setup"

    (interactive)
    (progn
      (zpwr/shHook)
      (zpwr/compHook)
      )
    )

    (defun zpwr/ielm-mode-defaults ()
     "IELM setup hook"
        (progn
        (turn-on-eldoc-mode)
        (message "hooked eldoc")
        ))

    (setq my-ielm-mode-hook 'zpwr/ielm-mode-defaults)
    ;;}}}***********************************************************


    ;;{{{                    MARK:auto hl
    ;;**************************************************************
   (defun zpwr/autoHighlight ()
     "Auto highlight setup hook"
    (with-eval-after-load 'highlight-symbol
     (cond
      ((eq evil-state 'normal)
       (ignore-errors
        (let ((message-log-max nil) (inhibit-message t))
             (progn
                (highlight-symbol-remove-all)
                (highlight-symbol)
              )
         )
        )))))

    ;;}}}***********************************************************

    (defun insert-foo ()
        (interactive)
        (insert "foo")
    )

    (defvar zpwr-map
        (let ((zpwrmap (make-sparse-keymap)))
                (define-key zpwrmap (kbd "C-z") #'helm-swoop)
                (define-key zpwrmap (kbd "C-c f") #'helm-swoop)
        zpwrmap)
    )

    (define-minor-mode zpwr-mode
        "zpwr minor mode"
            :lighter " ⓩ"
            :init-value t
            :global t
            :keymap zpwr-map
    )

    ;;(define-globalized-minor-mode prog-mode zpwr-mode zpwr-mode)
    ;;(add-to-list 'emulation-mode-map-alists `((zpwr-mode . zpwr-map)))


    (defun zpwr/keys-have-priority (_file)
    "Try to ensure that my keybindings retain priority over other minor modes.
    Called via the `after-load-functions' special hook."
        (progn
            ;;(message "zpwr to front of minor mode alist")
            (unless (eq (caar minor-mode-map-alist) 'zpwr-mode)
                (let ((mykeys (assq 'zpwr-mode minor-mode-map-alist)))
                    (assq-delete-all 'zpwr-mode minor-mode-map-alist)
                    (add-to-list 'minor-mode-map-alist mykeys)
                )
            )
        )
    )


    ;;{{{                    MARK:Hook bindings
    ;;**************************************************************

    (add-hook 'after-load-functions 'zpwr/keys-have-priority)

    (add-hook 'post-command-hook 'zpwr/autoHighlight)

    (add-hook 'ielm-mode-hook (lambda () (run-hooks 'my-ielm-mode-hook)))

    (add-hook 'spacemacs/startup-hook 'zpwr/compHook)

    (add-hook 'prog-mode-hook 'zpwr/indentHook)

    (add-hook 'prog-mode-hook 'zpwr/AS)

    (add-hook 'prog-mode-hook 'zpwr/progSetup)

    (add-hook 'perl-mode-hook 'zpwr/perlHook)

    (add-hook 'sh-mode-hook 'zpwr/shHook)

    (add-hook 'kill-emacs-hook 'persp-state-save)

    (add-hook 'emacs-lisp-mode-hook 'zpwr/lispSetup)

    (add-hook 'elisp-slime-nav-mode-hook 'zpwr/slimeSetup)

    (add-hook 'evil-evilified-state-entry-hook 'zpwr/evilifiedHook)

    (add-hook 'evil-normal-state-entry-hook 'zpwr/evilNormalStateSetup)

    ;;}}}***********************************************************

    (message "end user-i")

)
;;}}}***********************************************************

;;{{{                    MARK:userConfig
;;**************************************************************
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
    (message "start user-c")

  ;;{{{                    mark:eager loads
  ;;**************************************************************    
    (require 'company)
    (require 'yasnippet)
    (require 'noflet)
    (require 'highlight-indent-guides)
    (require 'real-auto-save)
    (require 'subr-x)
    (require 'evil)
  ;;}}}**************************************************************    

    ;;{{{                    MARK:Evil collection
    ;;**************************************************************
    (when (require 'evil-collection nil t)
        (evil-collection-init))
    ;;}}}***********************************************************

    ;;{{{                    MARK:keybindings
    ;;**************************************************************

    (evil-define-motion zpwr/up-four ()
     (evil-previous-visual-line (symbol-value 'zpwr/inc))
     )
    (evil-define-motion zpwr/right-four ()
     (evil-backward-char (symbol-value 'zpwr/inc))
     )
    (evil-define-motion zpwr/left-four ()
     (evil-forward-char (symbol-value 'zpwr/inc))
     )

    (evil-define-motion zpwr/down-four ()
     (evil-next-visual-line (symbol-value 'zpwr/inc))
     )


    (define-key evil-visual-state-map (kbd "C-j") #'zpwr/down-four)
    (define-key evil-visual-state-map (kbd "C-k") #'zpwr/up-four)

    (evil-ex-define-cmd "u0" 'zpwr/undo-all)

    (define-key evil-visual-state-map (kbd "C-h") #'zpwr/right-four)
    (define-key evil-visual-state-map (kbd "C-l") #'zpwr/left-four)

    (define-key evil-visual-state-map (kbd "C-b") #'zpwr/copy-to-clipboard)

    ;; displace lines up and down
    (define-key evil-visual-state-map "J" (concat ":m '>+1" (kbd "RET") "gv=gv"))
    (define-key evil-visual-state-map "K" (concat ":m '<-2" (kbd "RET") "gv=gv"))

    (define-key evil-normal-state-map (kbd "C-j") #'zpwr/down-four)
    (define-key evil-normal-state-map (kbd "C-k") #'zpwr/up-four)
    (define-key evil-normal-state-map (kbd "C-h") #'zpwr/right-four)
    (define-key evil-normal-state-map (kbd "C-l") #'zpwr/left-four)

    (define-key evil-normal-state-map (kbd "C-d") #'zpwr/undohunk)

    (define-key evil-insert-state-map (kbd "C-c <escape>") #'evil-normal-state)
    (define-key evil-normal-state-map (kbd "C-c <escape>") #'evil-normal-state)

    (define-key evil-insert-state-map (kbd "C-v") #'zpwr/runner)
    (define-key evil-normal-state-map (kbd "C-v") #'zpwr/runner)

    (define-key evil-insert-state-map (kbd "C-o") #'helm-company)
    (define-key evil-insert-state-map (kbd "C-l") #'hippie-expand)
    (define-key evil-insert-state-map (kbd "C-t") #'transpose-chars)

    (define-key evil-insert-state-map (kbd "C-@") 'zpwr/complete-current-statement)

    ;;^J up and ^D already
    (define-key evil-insert-state-map (kbd "C-d") #'company-complete)
    (define-key evil-insert-state-map (kbd "C-SPC") #'company-complete)

    (define-key evil-insert-state-map (kbd "C-s") #'helm-swoop)
    (define-key evil-normal-state-map (kbd "C-s") #'helm-swoop)

    ;;(define-key overriding-local-map (kbd "C-s") #'helm-swoop)

    (define-key evil-insert-state-map (kbd "C-f") #'spacemacs/frame-killer)
    (define-key evil-normal-state-map (kbd "C-f") #'spacemacs/frame-killer)

    (define-key evil-normal-state-map (kbd "[c") #'spacemacs/vcs-previous-hunk)
    (define-key evil-normal-state-map (kbd "]c") #'spacemacs/vcs-next-hunk)

    (define-key evil-normal-state-map (kbd "K") #'zpwr/doc-no-focus)

    ;; like gj
    (define-key evil-normal-state-map (kbd "j") #'evil-next-visual-line)
    ;; like gk
    (define-key evil-normal-state-map (kbd "k") #'evil-previous-visual-line)

    (spacemacs/set-leader-keys (kbd "of") #'zpwr/extract-fold)
    (spacemacs/set-leader-keys (kbd "orf") #'zpwr/replaceFill)
    (spacemacs/set-leader-keys (kbd "orr") #'zpwr/replace)

    (spacemacs/set-leader-keys (kbd "o.") #'helm-themes)

    (spacemacs/set-leader-keys (kbd "on") #'helm-M-x)

    (spacemacs/set-leader-keys (kbd "o,") #'dotspacemacs/sync-configuration-layers)

    (spacemacs/set-leader-keys (kbd "o/") #'spotify-playpause)
    (spacemacs/set-leader-keys (kbd "os") #'engine/search-google)

    (spacemacs/set-leader-keys (kbd "ox") #'spotify-next)
    (spacemacs/set-leader-keys (kbd "ol") #'spotify-previous)

    (spacemacs/set-leader-keys (kbd "oa") #'helm-projectile-ag)
    (spacemacs/set-leader-keys (kbd "oq") #'helm-gtags-select)

    (spacemacs/set-leader-keys (kbd "oti") #'highlight-indent-guides-mode)
    (spacemacs/set-leader-keys (kbd "oth") #'highlight-symbol-mode)

    (spacemacs/set-leader-keys (kbd "wq") #'delete-window)

    (spacemacs/set-leader-keys (kbd "og") #'helm-fd)
    (spacemacs/set-leader-keys (kbd "ov") #'helm-fasd-files)
    (spacemacs/set-leader-keys (kbd "ob") #'helm-fasd-directories)

    (spacemacs/set-leader-keys (kbd "oz") #'helm-z)

    (spacemacs/set-leader-keys (kbd "od") #'suspend-emacs)

    (spacemacs/set-leader-keys (kbd "oy") #'zpwr/copy-to-clipboard)
    (spacemacs/set-leader-keys (kbd "op") #'zpwr/paste-from-clipboard)

    (spacemacs/set-leader-keys (kbd "om") #'zpwr/show-messages)

    (define-key evil-insert-state-map (kbd "C-p") #'zpwr/show-messages)
    (define-key evil-normal-state-map (kbd "C-p") #'zpwr/show-messages)

    (spacemacs/set-leader-keys (kbd "oc") #'magit-commit)
    (spacemacs/set-leader-keys (kbd "op") #'magit-push)

    (spacemacs/set-leader-keys (kbd "oe") #'eval-expression)

    (if (featurep 'ns)
        (progn
            (global-set-key (kbd "<mouse-4>") (kbd "<wheel-up>"))
            (global-set-key (kbd "<mouse-5>") (kbd "<wheel-down>"))))
    ;;}}}***********************************************************

    ;;{{{                    MARK:line numbers
    ;;**************************************************************

    (setq display-line-numbers-width 4)
    (setq display-line-numbers-type t)
    (global-display-line-numbers-mode)
    ;;}}}***********************************************************


    ;;{{{                    MARK:company tab completion
    ;;**************************************************************

    (with-eval-after-load 'company
        (company-ctags-auto-setup)
    )

   (use-package company
     :hook (init)
     :config (global-company-mode t)
     (setq company-tooltip-align-annotations t)
     ;; Use builtin faces instead of ugly ones set by company
     (custom-set-faces
      '(company-preview
        ((t (:foreground "darkgray" :underline t))))
      '(company-preview-common
        ((t (:inherit company-preview :weight bold))))
      '(company-tooltip
        ((t (:inherit popup-face))))
      '(company-scrollbar-bg
        ((t (:inherit popup-scroll-bar-background-face))))
      '(company-scrollbar-fg
        ((t (:inherit popup-scroll-bar-foreground-face))))
      '(company-tooltip-selection
        ((t (:inherit popup-menu-selection-face))))
      '(company-tooltip-common
        ((((type x)) (:inherit company-tooltip :weight bold))
         (t (:inherit company-tooltip))))
      '(company-tooltip-common-selection
        ((((type x)) (:inherit company-tooltip-selection :weight bold))
         (t (:inherit company-tooltip-selection))))))

    (setq company-minimum-prefix-length 1)

    (defun check-expansion ()
        (save-excursion
        (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

    (defun do-yas-expand ()
        (let ((yas/fallback-behavior #'return-nil))
            (yas/expand)))

    (defun tab-indent-or-complete ()
        (interactive)
        (cond
        ((minibufferp)
            (minibuffer-complete))
        (t
            (indent-for-tab-command)
            (if (or (not yas/minor-mode)
                (null (do-yas-expand)))
            (if (check-expansion)
                (progn
                (company-manual-begin)
                (if (null company-candidates)
                (progn
                    (company-abort)
                    (indent-for-tab-command)))))))))

    (defun tab-complete-or-next-field ()
        (interactive)
        (if (or (not yas/minor-mode)
            (null (do-yas-expand)))
            (if company-candidates
            (company-complete-selection)
            (if (check-expansion)
            (progn
                (company-manual-begin)
                (if (null company-candidates)
                (progn
                (company-abort)
                (yas-next-field))))
            (yas-next-field)))))

    (defun expand-snippet-or-complete-selection ()
        (interactive)
        (if (or (not yas/minor-mode)
            (null (do-yas-expand))
            (company-abort))
            (company-complete-selection)))

    (defun abort-company-or-yas ()
        (interactive)
        (if (null company-candidates)
            (yas-abort-snippet)
            (company-abort)))

    (define-key evil-insert-state-map [tab] #'tab-indent-or-complete)

    (global-set-key [(control return)] #'company-complete-common)

    (define-key company-active-map [tab] #'expand-snippet-or-complete-selection)
    (define-key company-active-map (kbd "TAB") #'expand-snippet-or-complete-selection)

    (define-key yas-minor-mode-map [tab] nil)
    (define-key yas-minor-mode-map (kbd "TAB") nil)

    (define-key yas-keymap [tab] #'tab-complete-or-next-field)
    (define-key yas-keymap (kbd "TAB") #'tab-complete-or-next-field)
    (define-key yas-keymap [(control tab)] #'yas-next-field)
    (define-key yas-keymap (kbd "C-g") #'abort-company-or-yas)

    ;;real tab
    (define-key evil-normal-state-map (kbd "TAB") #'evil-jump-forward)
    ;;^I
    (define-key evil-normal-state-map [tab] #'evil-jump-forward)



    (defvar company-mode/enable-yas t)

    (defun company-mode/backend-with-yas (backend)
      "add :with company-yasnippet to every company backend"
        (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
            backend
            (append (if (consp backend) backend (list backend))
                '(:with company-yasnippet))))

    (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))


    ;;}}}***********************************************************

    ;;{{{                    MARK:helm
    ;;**************************************************************
    (with-eval-after-load 'helm
     (progn
        (define-key helm-map (kbd "C-u") #'backward-kill-sentence)
        (define-key helm-map (kbd "C-n") #'helm-next-page)
        (define-key helm-map (kbd "C-p") #'helm-previous-page)
      )

    )
    ;;}}}***********************************************************


    ;;{{{                    MARK:persp config
    ;;**************************************************************

    (with-eval-after-load 'perspective
     (progn
        (persp-mode)
        (setq persp-state-default-file "~/.persp.txt")
      ))
    ;;}}}***********************************************************


    ;;{{{                    MARK:emacs config
    ;;**************************************************************
    ;; no #files#
    (setq make-backup-files nil)
    (setq auto-save-default nil)
    (setq create-lockfiles nil)
    (setq whitespace-display-mappings '((space-mark 32 [?·]) (tab-mark 32 [?·])))
    (setq whitespace-style '(face trailing space-mark tab-mark))
    (define-coding-system-alias 'UTF-8 'utf-8)
    (setq highlight-indent-guides-method 'character)
    (setq highlight-indent-guides-character ?\|)

    (setq highlight-indent-guides-responsive 'top)
    (setq highlight-indent-guides-delay 0.5)
    (setq highlight-indent-guides-auto-enabled nil)
    (setq completion-ignore-case t)
    (set-face-foreground 'highlight-indent-guides-top-character-face "cyan")

    ;; only spaces not tabs
    (setq-default indent-tabs-mode nil)
    ;; 4 spaces not tabs
    (setq-default tab-width 4)

    ;;always y or n
    (defalias 'yes-or-no-p 'y-or-n-p)
    ;;}}}***********************************************************


    ;;{{{                    MARK:emamux config
    ;;**************************************************************
    (setq emamux:default-orientation 'horizonal)
    ;;}}}***********************************************************

    ;;{{{                    MARK:final
        ;;**************************************************************
    (setq ycmd-server-command (list "python" (file-truename "~/.vim/bundle/YouCompleteMe/third_party/ycmd/ycmd")))

    (zpwr/compHook)

    (setq origami-fold-style 'triple-braces)

    ;;}}}***********************************************************

    ;;(spacemacs/toggle-automatic-symbol-highlight)
    (ignore-errors (highlight-symbol-mode))

    (use-package evil-surround
        :ensure t
        :config
        (global-evil-surround-mode 1))


    ;;{{{                    MARK:evil snipe
    ;;**************************************************************
    (evil-snipe-override-mode 1)
    (evil-snipe-mode +1)
    (setq evil-snipe-scope 'whole-buffer)
    (setq evil-snipe-repeat-scope 'whole-buffer)
    ;;}}}***********************************************************


    ;; Treat CamelCase as separate words everywhere
    (spacemacs/toggle-camel-case-motion-globally-on)


    ;;{{{                    MARK:auto file preview from hem
    ;;**************************************************************
    (helm-file-preview-mode 1)
    (setq helm-file-preview-only-when-line-numbers nil)
    (setq helm-file-preview-preview-only t)
    (setq helm-candidate-number-limit 200)
    ;;}}}***********************************************************


    ;;{{{                    MARK:enable helm gtags
    ;;**************************************************************
    (helm-gtags-mode)
    (setq helm-allow-mouse t)
    (setq helm-follow-mode-persistent t)
    ;;}}}***********************************************************


    ;;{{{                    MARK:yasnippets
    ;;**************************************************************
    (yas-global-mode 1)

    (add-to-list 'yas-snippet-dirs
     'zpwr-snippets-dir
     )

    (yas-reload-all)

    (flyspell-prog-mode)

    ;;}}}***********************************************************


    
    ;;{{{                    MARK:zpwr minor mode
    ;;**************************************************************
    (zpwr-mode 1)
    ;;}}}**************************************************************
    

    ;;{{{                    MARK:display theses buffer in special windows
    ;;**************************************************************
    (setq display-buffer-alist
        '(
            ("\\*Messages"
				  (display-buffer-reuse-window display-buffer-same-window))
            ("\\*shell"
				  (display-buffer-reuse-window display-buffer-in-side-window)
				  (side . right)
				  (window-width . 0.4))
            ("\\*Help"
				  (display-buffer-reuse-window display-buffer-in-side-window)
				  (side . right)
				  (window-width . 0.4))
        ))
    ;;}}}***********************************************************

    (message "end user-c")

      (setq helm-source-names-using-follow (quote
    ("completion-at-point" "describe-package" "Current Perspective: @Default" "describe-keymap" "describe-function" "describe-variable" "Key translations Starting With C-x:" "Function key map translations Starting With C-x:" "Global Bindings Starting With C-x:" "`undo-tree-mode' Minor Mode Bindings Starting With C-x:" "`evil-search-highlight-persist' Minor Mode Bindings Starting With C-x:" "`helm--minor-mode' Minor Mode Bindings Starting With C-x:" "`winum-mode' Minor Mode Bindings Starting With C-x:" "elisp-slime-nav-describe-elisp-thing-at-point" "HELM available REPLs" "Customize Face" "rgrep" "describe-theme" "configuration-layer/describe-package" "Major Mode Bindings:" "Dotfile" "Packages" "Layers" "Spacemacs Documentation" "Minor modes" "package-install" "Yasnippet" "find-function" "Imenu" "ielm-change-working-buffer" "Selection Theme" "Buffers" "Find tag from here" "Select Tag" "`winum-mode' Minor Mode Bindings:" "`evil-snipe-local-mode' Minor Mode Bindings:" "`evil-snipe-override-local-mode' Minor Mode Bindings:" "`hs-minor-mode' Minor Mode Bindings:" "`ido-mode' Minor Mode Bindings:" "`flycheck-mode' Minor Mode Bindings:" "`persp-mode' Minor Mode Bindings:" "`eyebrowse-mode' Minor Mode Bindings:" "`evil-surround-mode' Minor Mode Bindings:" "Key translations:" "Global Bindings:" "Function key map translations:" "Input decoding map translations:" "`evil-motion-state-local-minor-mode' Minor Mode Bindings:" "`spacemacs-sh-mode-map-active' Minor Mode Bindings:" "`evil-normal-state-minor-mode' Minor Mode Bindings:" "`evil-normal-state-local-minor-mode' Minor Mode Bindings:" "Classes" "Emacs Commands" "Faces" "Generic functions" "Functions" "Variables" "Commands" "Emacs Commands history")))


  )
;;}}}***********************************************************

;;{{{                    MARK:spacemacs modified
;;**************************************************************
;; DO not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(evil-want-Y-yank-to-eol nil)
 '(helm-completion-style 'emacs)
 '(helm-minibuffer-history-key "M-p")
 '(helm-source-names-using-follow
   '("customize-variable" "set-variable" "completion-at-point" "describe-package" "Current Perspective: @Default" "describe-keymap" "describe-function" "describe-variable" "Key translations Starting With C-x:" "Function key map translations Starting With C-x:" "Global Bindings Starting With C-x:" "`undo-tree-mode' Minor Mode Bindings Starting With C-x:" "`evil-search-highlight-persist' Minor Mode Bindings Starting With C-x:" "`helm--minor-mode' Minor Mode Bindings Starting With C-x:" "`winum-mode' Minor Mode Bindings Starting With C-x:" "elisp-slime-nav-describe-elisp-thing-at-point" "HELM available REPLs" "Customize Face" "rgrep" "describe-theme" "configuration-layer/describe-package" "Major Mode Bindings:" "Dotfile" "Packages" "Layers" "Spacemacs Documentation" "Minor modes" "package-install" "Yasnippet" "find-function" "Imenu" "ielm-change-working-buffer" "Selection Theme" "Buffers" "Find tag from here" "Select Tag" "`winum-mode' Minor Mode Bindings:" "`evil-snipe-local-mode' Minor Mode Bindings:" "`evil-snipe-override-local-mode' Minor Mode Bindings:" "`hs-minor-mode' Minor Mode Bindings:" "`ido-mode' Minor Mode Bindings:" "`flycheck-mode' Minor Mode Bindings:" "`persp-mode' Minor Mode Bindings:" "`eyebrowse-mode' Minor Mode Bindings:" "`evil-surround-mode' Minor Mode Bindings:" "Key translations:" "Global Bindings:" "Function key map translations:" "Input decoding map translations:" "`evil-motion-state-local-minor-mode' Minor Mode Bindings:" "`spacemacs-sh-mode-map-active' Minor Mode Bindings:" "`evil-normal-state-minor-mode' Minor Mode Bindings:" "`evil-normal-state-local-minor-mode' Minor Mode Bindings:" "Classes" "Emacs Commands" "Faces" "Generic functions" "Functions" "Variables" "Commands" "Emacs Commands history"))
 '(linum-format " %7i ")
 '(package-selected-packages
   '(ivy ansible slime swift-mode d-mode flycheck-dmd-dub undo-tree systemd spaceline powerline oauth2 websocket test-simple loc-changes load-relative yaxception pcre2el org-category-capture nginx-mode magit-popup skewer-mode simple-httpd parent-mode multi haml-mode ham-mode html-to-markdown gitignore-mode fringe-helper git-gutter+ git-gutter gh marshal logito pcache ht flx highlight smartparens iedit annalist goto-chg json-mode docker-tramp json-snatcher json-reformat autothemer ycmd request-deferred deferred ycm web-completion-data pos-tip go-mode clojure-snippets clj-refactor hydra inflections paredit cider-eval-sexp-fu cider sesman seq spinner queue pkg-info parseedn clojure-mode parseclj a epl bind-map bind-key yasnippet packed anaconda-mode pythonic f memoize alert log4e gntp s avy async auto-complete popup multiple-cursors wakatime-mode dash-functional inf-ruby realgud circe with-editor git-commit request evil anzu all-the-icons lv auctex tablist markdown-mode company helm-core projectile org-plus-contrib magit transient rust-mode js2-mode emojify typescript-mode flycheck dash helm define-word zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org tide tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spotify spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode slack shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restart-emacs rebecca-theme realgud-pry real-auto-save rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme powershell popwin plsense planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme perspective persp-mode pbcopy paradox osx-trash osx-dictionary origami orgit organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme launchctl js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme indent-guide hy-mode hungry-delete htmlize hl-todo highlight-symbol highlight-parentheses highlight-numbers highlight-indentation highlight-indent-guides heroku-theme hemisu-theme helm-z helm-themes helm-swoop helm-spotify-plus helm-rg helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-google helm-gitignore helm-git-grep helm-git-files helm-git helm-fuzzy helm-flx helm-file-preview helm-fd helm-fasd helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-guru go-eldoc gnuplot gmail-message-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md ggtags gandalf-theme fzf fuzzy flymd flycheck-ycmd flycheck-rust flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator fasd farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-collection evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks engine-mode emmet-mode emamux elisp-slime-nav edit-server dumb-jump dracula-theme doom-themes dockerfile-mode docker django-theme disaster diminish diff-hl darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme ctags-update company-ycmd company-ycm company-web company-statistics company-shell company-quickhelp company-plsense company-go company-ctags company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmake-mode clues-theme clean-aindent-mode clang-format chruby cherry-blossom-theme cargo busybee-theme bundler bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent ag afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview :weight bold))))
 '(company-scrollbar-bg ((t (:inherit popup-scroll-bar-background-face))))
 '(company-scrollbar-fg ((t (:inherit popup-scroll-bar-foreground-face))))
 '(company-tooltip ((t (:inherit popup-face))))
 '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
 '(company-tooltip-selection ((t (:inherit popup-menu-selection-face)))))







;;}}}***********************************************************

