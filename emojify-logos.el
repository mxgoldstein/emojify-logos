;;; emojify-logos.el --- Add logos to emojify

;; Copyright (C) 2017 mxgoldstein

;; This script is licensed under

;; Author: mxgoldstein <m_goldstein@gmx.net>
;; URL: https://github.com/mxgoldstein/emojify-logos
;; Version: 0.1
;; Package-Requires: ((emojify "0.4"))

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;;; Commentary:

;; This package adds logo icons for various programming languages and tools to emojify.el
;; All icons are the property of their respective owners and may be trademarked and/or restricted in the way they may be used.  See COPYRIGHT.MD for more details.

;;; TODO

;; Add more logos for languages / modes etc.
;; Use uniform icon sizes
;; Replace low-quality C icon
;; Find a (somewhat) free icon for java

(require 'emojify)
(require 'url)

;;; Code:

(setq emojify-logos-dir (concat emojify-emojis-dir "/logos/"))
(setq emojify-logos-download-url "https://raw.githubusercontent.com/mxgoldstein/emojify-logos/master/logos/")

(setq emojify-logo-list '("C" "C++" "Emacs" "Erlang" "Haskell" "LaTeX" "Org" "PDF" "Perl" "Python" "Ruby"))

(defun emojify-logos-download ()
  "(Re-)Download logo emojis from the ‘emojify-logos-download-url’."
  (interactive)
  (if (not (file-exists-p emojify-logos-dir)) (mkdir emojify-logos-dir t))
  (let (logo)
    (dolist (logo emojify-logo-list)
      (url-copy-file (concat emojify-logos-download-url (downcase logo) ".png") (concat emojify-logos-dir (downcase logo) ".png") t)))
  (message "Downloaded logos")
  (emojify-set-emoji-data))
  
  
(let (logo)
  (dolist (logo emojify-logo-list)
    (add-to-list 'emojify-user-emojis
                 `(,(concat ":" (downcase logo) ":") . (( "name" . ,logo )
                                                         ("image" . ,(concat emojify-logos-dir (downcase logo) ".png"))
                                                         ("style" . "github"))))))

;; Update emoji set
(emojify-set-emoji-data)

(provide 'emojify-logos)

;;; emojify-logos.el ends here
