(defun delete-row (selector-fn)
  (setf *db* (remove-if selector-fn *db*)))
; Usage:
;   (delete-row (where :artist "Dixie Chicks"))
