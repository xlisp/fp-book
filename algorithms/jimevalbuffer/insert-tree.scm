;; insert define tree
(define (key tree) (cadr tree))
(define (left tree) 
  (if (null? tree) '() (car tree)))
(define (right tree) 
  (if (null? tree) '() (caddr tree)))

(define (make-tree left key right)
  (list left key right))

(define (tree-insert tree x)
  (cond ((null? tree) (list '() x '()))
	((< x (key tree))
	 (make-tree (tree-insert (left tree) x)
		    (key tree)
		    (right tree)))
	((> x (key tree))
	 (make-tree (left tree)
		    (key tree)
		    (tree-insert (right tree) x)))))

(define (list->tree lst)
  (fold-left tree-insert '() lst))

(define t1 (list->tree '(15 6 18 3 7 17 20 2 4 13 9)))

(display t1)
;;=>((((() 2 ()) 3 (() 4 ())) 6 (() 7 ((() 9 ()) 13 ())))
;;  15
;;  ((() 17 ()) 18 (() 20 ())))

