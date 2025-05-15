CLIPS> (deftemplate rect
         (slot height)
         (slot width))
CLIPS> (defrule perimeter
         (rect (height ?h) (width ?w))
          =>
         (bind ?p (+ (* 2 ?h) (* 2 ?w)))
         (printout t "The perimeter of the rectangle is: " ?p crlf))
CLIPS> (assert (rect (height 5) (width 3)))

<Fact-1>
CLIPS> (run)

The perimeter of the rectangle is: 16