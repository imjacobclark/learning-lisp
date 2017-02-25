(defun predicates()
    (print (equal (+ 2 2) 4))
    (print (equal (+ 2 3) 4))

    (print (equal '(this is a list) (setf my-list '(this is a list))))

    (print (equal '(this is a list) my-list))

    (print (let ((one-list '(A B C))
        (another-list '(A B C)))
        (equal one-list another-list)
    ))

    (print (let* ((one-list 'A)
        (another-list one-list))
        (equal one-list another-list)
    ))

    (print (let ((one-list 'A))
        (let (another-list one-list)
        (equal one-list another-list))
    ))

    (print (equal '(this is a list) (reverse '(this is a list))))
    (print (equal '(this is a list) (reverse (reverse '(this is a list)))))

    (print (eql '(test) '(test)))
    (print (eql 4 4))

    (print (member 'mother '(tell me more about your mother please)))
    (print (member 'father '(tell me more about your mother please)))
)
