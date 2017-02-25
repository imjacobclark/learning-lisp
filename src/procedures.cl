(defun procedures()
    (setf meals '(breakfast lunch tea dinner))

    (defun both-ends
        (whole-list)
        (cons (first whole-list) (last whole-list))
    )

    (defun both-ends-with-two-parameters(l m)
        (cons (first l) (last m))
    )

    (defun exchange(pair)
        (list (second pair) (first pair))
    )

    (defun rotate(items) (append (rest items) (list (first items))))

    (defun rotate-right (items) (append (last items) (butlast items)))

    (defun palindromize (items) (append items (reverse items)) )

    (defun f-to-c (degrees)
        (- (/ (* (+ degrees 40) 5) 9) 40)
    )

    (defun c-to-f (degrees)
        (- (/ (* (+ degrees 40) 9) 5) 40)
    )

    (defun construct(front back)
        (cons front back)
    )

    (print (both-ends meals))
    (print (both-ends-with-two-parameters '(breakfast lunch) '(tea dinner)))

    (print (exchange '(adam eve)))

    (print (construct 'adam '(eve)))

    (print (rotate '(a b c)))
    (print (rotate (rotate '(a b c))))

    (print (rotate-right '(a b c)))
    (print (rotate-right (rotate-right '(a b c))))

    (print (palindromize '(1 2 3)))

    (print (f-to-c 32))
    (print (f-to-c 98.6))
    (print (f-to-c 212))

    (setf whole-list '(breakfast lunch tea dinner))

    (let ( ; Fence the below statements 
        (element 
            (first whole-list))
        (trailer 
            (last whole-list)))
        (cons element trailer)
    )

    (setf x 'outside)
    (print (let ( ; Fence the below statements but bind in parallel
        (x 'inside)
        (y x))
        (list x y)))

    (setf x 'outside)
    (print (let* ( ; Fence the below statements but don't bind in parallel
        (x 'inside)
        (y x))
        (list x y)))

    (setf x 'outside)
    (print  ; Fence the below statements but don't bind in parallel
        (let ((x 'inside))
            (let ((y x))
                (list x y))))
)
