(in-package #:detome)

(defmacro set-level (map)
  (let ((h (length map))
        (w (length (car map))))
    (with-gensyms (i j)
      `(progn
         (setf *level-width* ,w
               *level-height* ,h
               *level* (make-array '(,h ,w)))
         (loop for ,i below ,h do
              (loop for ,j below ,w do
                   (setf (aref *level* ,i ,j)
                         (list (nth ,j (nth ,i ',map))))))
         (clear-intensity-map)
         (clear-explored-map)))))

(defmacro place-monster (name x y)
  (with-gensyms (mt)
    `(let ((,mt (lookup-monster-type ,name)))
       (push (make-instance 'monster               
                            :x ,x :y ,y
                            :name (symbol-name (gensym (name ,mt)))
                            :image-name (image-name ,mt)
                            :mon-type ,mt
                            :level (level ,mt)
                            :hp (funcall (hp-gen ,mt))
                            :att-r (funcall (att-r-gen ,mt))
                            :dmg-r (funcall (dmg-r-gen ,mt))
                            :def-r (funcall (def-r-gen ,mt))
                            :update-cb (ai-cb ,mt)
                            :update-cb-control '(:turns 0)) 
             *monsters-in-level*))))

(defmacro make-scenery (image x y)
  (with-gensyms (obj)
    `(let ((,obj (make-object :name (symbol-name (gensym ,image)))))
       (setf (aref *level* ,y ,x)
             (append (aref *level* ,y ,x)
                     (list (map-cell-number (gethash ,image *map-cells-by-name*)))))
       (set-meta (:image ,obj) ,image)
       (set-meta (:x ,obj) ,x)
       (set-meta (:y ,obj) ,y))))

(defmacro place-player (x y)
  `(progn
     (setf (x *player*) ,x
           (y *player*) ,y)
     (update-intensity-map ,x ,y 1.0)))