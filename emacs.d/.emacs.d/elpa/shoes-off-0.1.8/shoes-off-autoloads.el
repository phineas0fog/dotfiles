;;; shoes-off-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "shoes-off" "shoes-off.el" (22661 650 527778
;;;;;;  741000))
;;; Generated autoloads from shoes-off.el

(autoload 'shoes-off--make-server "shoes-off" "\
Make the listening server socket.

\(fn PORT)" nil nil)

(autoload 'shoes-off-start "shoes-off" "\
Start the bouncer daemon on PORT.

\(fn PORT)" t nil)

(autoload 'shoes-off-stop "shoes-off" "\
Stop the bouncer daemon.

\(fn)" t nil)

(autoload 'shoes-off-start-session "shoes-off" "\
Start the bouncer for USERNAME.

Initiates the upstream IRC connections for the user.

\(fn USERNAME)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; shoes-off-autoloads.el ends here
