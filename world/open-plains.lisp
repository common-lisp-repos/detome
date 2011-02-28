(in-package #:detome)

(defun build-open-plains ()
  (clear-monsters-from-level)

  (set-perlin-level
   #'(lambda (x y)
       (let ((per (perlin2d x y 0.1 4)))
         (cond
           ((> per 0.75) '(0 2))
           ((> per 0.6) '(0 8))
           (t '(0))))))

  (place-monster "rat" 10 10)

  (make-object
   :name "plains monster creator"
   :update-cb #'(lambda (obj)
                  (declare (ignore obj))
                  (when (> (random 1.0) 0.75)
                    (let (x y)
                      (textarea-log '("test"))
                      (ecase (random 4)
                        (0 (setf x (+ (x *player*) 20)
                                 y (+ (y *player*) (random 30) -15)))
                        (1 (setf x (- (x *player*) 20)
                                 y (+ (y *player*) (random 30) -15)))
                        (2 (setf x (+ (x *player*) (random 30) -15)
                                 y (+ (y *player*) 20)))
                        (3 (setf x (+ (x *player*) (random 30) -15)
                                 y (- (y *player*) 20))))
                      (place-random-monster 0 4 x y))))
   :update-cb-control '(:turns 0))
                  
  (place-player 1 1))

(defun cleanup-open-plains ()
  (remove "plains monster creator" *play-game-state*))