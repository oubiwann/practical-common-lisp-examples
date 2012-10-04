(defun add-cds ()
  (loop (add-record (prompt-for-cd))
        (if (not (y-or-n-p "Add another CD? [y/n]: ")) (return))))
