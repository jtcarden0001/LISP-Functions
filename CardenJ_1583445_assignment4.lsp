

; Drop All Function
; Drops a value from a list no matter how deep it is in the list

(defun drop-all (atm lst)
  (cond ((atom lst) lst)
  ((equal (car lst) atm) (drop-all atm (cdr lst)))
  (t (if (listp (car lst)) 
  	(cons (drop-all atm (car lst)) (drop-all atm (cdr lst))) 
  	(cons (car lst)(drop-all atm (cdr lst)))))))

;Output examples

;Break 2 [6]> (drop-all 'a '(1 2 a b 3 a c d a 8))                     
;(1 2 B 3 C D 8)
;Break 2 [6]> (drop-all 'a '(1 2 (a b c(a d(f a))) x (a y) w a 3 5 a ))
;(1 2 (B C (D (F))) X (Y) W 3 5)

; find-nums Function
; Finds a number in a list no matter how deep they are in a list

(defun find-nums (lst)
  (cond ((atom lst) lst)
  ((equal (type-of (car lst)) (type-of 'W)) (find-nums (cdr lst)))
  (t (if (listp (car lst)) 
  	(cons (find-nums (car lst)) (find-nums (cdr lst))) 
  	(cons (car lst)(find-nums (cdr lst)))))))


;Output Examples

;Break 2 [6]> (find-nums '(a b 2 4 d 8 c 3 w w w 5))
;(2 4 8 3 5)
;Break 2 [6]> (find-nums '(1 2 (3 a b) (w 3 4 (7 9 d) b) 5 a b))
;(1 2 (3) (3 4 (7 9)) 5)
