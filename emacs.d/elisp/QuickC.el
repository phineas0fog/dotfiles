;;-------------------------------------------------------------------------------------
;; QuickC
;; Generate a temp folder and insert pre-formated default files to work in a C project
;;-------------------------------------------------------------------------------------
 
(defun initialize_temp_c_folder()
  (setq tempCFolder (substring (shell-command-to-string "mktemp -d") 0 -1)) ;; Create a temp folder in "/tmp"
 
  (shell-command (concat "touch " (concat tempCFolder "/test{.c,.h,-main.c}"))) ;; Create files test.c, test.h and test-main.c in the tmp folder
 
  (setq test_c (concat tempCFolder "/test.c"))
  (setq test_h (concat tempCFolder "/test.h"))
  (setq test_main_c (concat tempCFolder "/test-main.c")))
 
(defun write_test_main_c ()
  (switch-to-buffer (find-file-noselect test_main_c))
  (erase-buffer)
  (insert (format "#include \"test.h\" \n\nint main(){\n\n  return 0;\n}")))
 
(defun write_test_h ()
  (switch-to-buffer (find-file-noselect test_h))
  (erase-buffer)
  (insert (format "#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n\n")))
 
(defun write_test_c ()
  (switch-to-buffer (find-file-noselect test_c))
  (erase-buffer)
  (insert (format "#include \"test.h\" \n\n")))
 
;; Generate a temp folder and insert pre-formated default files to work in a C project
(defun start_temp_c_folder ()
  (interactive)
  (initialize)
  (write_test_h)
  (write_test_c)
  (write_test_main_c))
 
;; Remove all the generated files from the buffer
(defun kill_temp_c_folder ()
  (interactive)
  (kill-buffer (find-file-noselect test_main_c))
  (kill-buffer (find-file-noselect test_h))
  (kill-buffer (find-file-noselect test_c)))
 
;; Mapping the main functions on function keys
(global-set-key (kbd "<f7>") 'start_temp_c_folder)
(global-set-key (kbd "<f8>") 'kill_temp_c_folder)
