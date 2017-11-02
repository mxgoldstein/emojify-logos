;; emojify-logos.el --- Add logos to emojify

;; Copyright (C) 2017 mxgoldstein

;; Author: mxgoldstein <m_goldstein@gmx.net>
;; URL: https://github.com/mxgoldstein/emojify-logos
;; Version: 0.1
;; Package-Requires: ((emojify "0.4"))

;;; Commentary:

;; This package adds icons for various programming languages and tools to emojify.el
;; All icons are the property of their respective owners and may be trademarked and/or restricted in the way they may be used. See COPYRIGHT.MD for more details.


;;; TODO

;; Add more logos for languages / modes etc.
;; Use uniform icon sizes (128x128)
;; Replace low-quality C icon
;; Find a (somewhat free) icon for java

(require 'emojify)
(require 'url)

(setq emojify-logos-dir (concat user-emacs-directory "emojis/logos/"))
(setq emojify-logos-download-url "https://raw.githubusercontent.com/mxgoldstein/emojify-logos/master/logos/")

(setq emojify-logo-list '("C" "C++" "Emacs" "Haskell" "LaTeX" "Org" "PDF" "Perl" "Python" "Ruby"))

(defun emojify-logos-download ()
  "(Re-)Download logo emojis from the emojify-logos-download-url"
  (interactive)
  (if (file-exists-p emojify-logo-dir) (mkdir emojify-logo-dir))
  (let (logo)
    (dolist (logo emojify-logo-list)
      (url-copy-file (concat emojify-logos-download-url (downcase logo) ".png") (concat emojify-logos-dir (downcase logo) ".png") t)))
  (message "Downloaded logos"))
  
  
(let (logo)
  (dolist (logo emojify-logo-list)
    (add-to-list 'emojify-user-emojis
                 `(,(concat ":" (downcase logo) ":") . (( "name" . ,logo )
                                                         ("image" . ,(concat emojify-logos-dir (downcase logo) ".png"))
                                                         ("style" . "github"))))))

;; Update emoji set
(emojify-set-emoji-data)

(provide 'emojify-logos)
