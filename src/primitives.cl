; Expressions, Atoms, Numbers, Symbols and Lists are all data types.

; List, each item inside is an element
; Each element is a form of atom
; Atoms and Lists are symbolic expressions (expressions)

(defun primitives()
    (setf ten (+ 1 2 3 4)) ; A list of 5 elements, 1st element is a procedure - 2-5th elements are the arguments
    (print ten) 

    (setf ten (* 2 5)) ; List of numeric atoms (numers)
    (print ten)

    (setf ten (/ (* 10 100) 100))
    (print ten)

    ; The ' (quote mark) tells Lisp to stop evaluating for procedures (otherwise Lisp would think Jacob is a procedure and fail to compile)
    (setf friends '(Jacob Emma John Sandra)) ; List of symbolic atoms (symbols, s-expression)

    (setf enemies '(Troll Grinch Ghost))

    (setf enemies (remove 'Ghost enemies)) ; Set enemies and remove ghost
    (setf friends (cons 'Ghost friends)) ; Set friends and add ghost (cons for construct)

    (defun newfriend(name)
        (setf enemies (remove name enemies))
        (setf friends (cons name friends)) )

    (print friends)
    (print enemies)

    (newfriend 'Troll) ; Remove troll using our function above

    (print friends)
    (print enemies)
    
    (print (first '(fast computers are nice))) ; Print just the first element
    (print (rest '(fast computers are nice))) ; Print all elements but the first 

    (print (first '((fast computers) (are nice)))) 
    (print (rest '((fast computers) (are nice))))

    (print (first (rest '(a b c)))) ; Get the second element, again ' tells lisp to stop evaluating, otherwise Lisp would assume a is a procedure 
    
    ; Contents Address Register (CAR)
    ; Contents Decrement Register (CDR)
    (print (car '(a b c))) ; FIRST
    (print (cdr '(a b c))) ; REST
    (print (cddr '(a b c))) ; REST REST
    (print (caddr '(a b c))) ; FIRST REST REST

    (setf ablist '(a b))
    (print ablist)
    (print 'ablist)

    (print (first ablist))
    (print (rest ablist))

    (setf   ablist '(a b)
            xylist '(x y))

    (print ablist)
    (print xylist)

    (setf   jacobs-age '23
            jacobs-birthday '(2 08 1993))

    (setf jacob (cons jacobs-age jacobs-birthday))

    (print jacobs-age)
    (print jacobs-birthday)
    (print jacob)

    (print (append '(a b) '(c d)))

    (setf jacob 
            '(
                (first-name Jacob) ; key value
                (last-name Clark)))

    (print  
        (list 
            (first (rest (assoc 'first-name jacob))) 
            (first (rest (assoc 'last-name jacob)))))
    )

