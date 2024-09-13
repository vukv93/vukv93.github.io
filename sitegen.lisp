(asdf:load-system :hunchentoot)
(asdf:load-system :cl-who)
(format t "~a~%" "Can I just write like this on multiple
lines?
Sure!")
(defun app (stream name checked &optional value)
  (cl-who:with-html-output (stream)
    (:input :type "checkbox" :name name :checked checked :value value)
    (:p :class "abstract" "
     This is the abstract.")))
(with-output-to-string (s) (app s "faa" t "bar"))

(let ((template '(home projects)))
  template)
