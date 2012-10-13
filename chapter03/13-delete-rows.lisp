(defun delete-rows (selector-fn)
  (setf *db* (remove-if selector-fn *db*)))
