; a specific selector
(defun artist-selector (artist)
  #'(lambda (cd) (equal (getf cd :artist) artist)))
; a generic selector
(defun where (&key title artist rating (ripped nil ripped-p))
  #'(lambda (cd)
      (and
        (if title (equal (getf cd :title) title) t)
        (if artist (equal (getf cd :artist) artist) t)
        (if rating (equal (getf cd :rating) rating) t)
        (if ripped-p (equal (getf cd :ripped) ripped) t))))
; the selector-using function
(defun select (selector-fn)
  (remove-if-not selector-fn *db*))
; Usage examples:
;   (select (artist-selector "Dixie Chicks"))
;   (select (where :artist "Dixie Chicks"))
