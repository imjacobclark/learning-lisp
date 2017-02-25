(load "src/primitives.cl")
(load "src/procedures.cl")
(load "src/predicates.cl")

(defun main()
    (print "----- Primitives")
    (primitives)
    (print "----- Procedures")
    (procedures)
    (print "----- Predicates")
    (predicates))

(main)