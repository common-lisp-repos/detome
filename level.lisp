(in-package #:detome)

(defvar *level*
  (make-array '(50 50)
              :initial-contents 
              '((0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 3 3 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 1 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
                (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))))

(defvar *intensity-map* (funcall #'make-array (array-dimensions *level*)))
(defvar *explored-map* (funcall #'make-array (array-dimensions *level*)))

(defvar *player* (make-instance 'player
                                :name "player"
                                :x 1
                                :y 1
                                :hp 10
                                :att-r '(1 5)
                                :dmg-r '(1 4)
                                :def-r '(1 5)))
(defvar *monsters-in-level* nil)

(defun clear-monsters-from-level ()
  (loop for mon in *monsters-in-level* do
       (remove-object (name mon)))
  (setf *monsters-in-level* nil))

(defvar *map-cells-by-number* (make-hash-table :test #'eq))
(defvar *map-cells-by-name* (make-hash-table :test #'equal))

(defstruct map-cell
  number
  name
  attenuation
  walkable
  image)

(defmacro define-map-cell (number name &key attenuation walkable image)
  (let ((cell (gensym)))    
    `(let ((,cell (make-map-cell :number ,number
                                 :attenuation ,attenuation
                                 :walkable ,walkable
                                 :image ,image)))
       (setf (gethash ,number *map-cells-by-number*)
             ,cell
             (gethash ,name *map-cells-by-name*)
             ,cell))))

(defun define-images ()
  (define-image "plain" "data/tileset.png" '(1 1 32 32))
  (define-image "tree" "data/tileset.png" '(100 1 32 32))
  (define-image "wall" "data/tileset.png" '(34 1 32 32))
  (define-image "mountain" "data/tileset.png" '(67 1 32 32))
  (define-image "player-front" "data/tileset.png" '(1 34 32 32))
  (define-image "rat" "data/tileset.png" '(1 67 32 32))
  (define-image "giant-rat" "data/tileset.png" '(34 67 32 32)))

(define-map-cell 0
    "plain"
  :attenuation '(0.1 :dark 0.6)
  :walkable t
  :image "plain")
(define-map-cell 1
    "wall"
  :attenuation 1.0
  :walkable nil
  :image "wall")
(define-map-cell 2
    "mountain"
  :attenuation '(0.75 :dark 0.9)
  :walkable t
  :image "mountain")
(define-map-cell 3
    "tree-on-plain"
  :attenuation '(0.1 :dark 0.6)
  :walkable t
  :image '("plain" "tree"))
(define-map-cell 4
    "tree-on-mountain"
  :attenuation '(0.75 :dark 0.9)
  :walkable t
  :image '("mountain" "tree"))

(defun take-turn ()
  "Any objects that use :turns will have their number of turns incremented."
  (loop for obj in black::*object-list* do
       (with-slots (update-cb-control) obj
         (when (and (consp update-cb-control) (eq (car update-cb-control) :turns))
           (incf (second update-cb-control))))))


(defvar *message-area-rawtext* nil)
(defvar *message-area-buffer* nil)
(defun textarea-log (message-as-list 
		     &key (location-func #'(lambda (log) (push log *message-area-rawtext*))) 
		     (ttl *default-message-ttl-sec*))
  (funcall location-func (cons ttl (list (append `((:color ,sdl:*white*)) message-as-list)))))

(defvar *hover-messages* nil
  "Hover messages is a list of hover messages in progress.")
(defstruct hover
  x y
  mover
  width height
  box-color alpha
  draw-rect
  ttl
  formatted-strings)
(defun make-hover-message (x y width color alpha message-as-list &key mover ttl (draw-rect t) fit-height (height black::*screen-height*))
  (let ((raw-message (list (cons 1 (list (append `((:color ,sdl:*white*)) message-as-list)))))
        strings
        buffer)
    (multiple-value-setq (strings buffer)
      (update-message-strings
       0.0
       buffer
       :rawtext raw-message
       :message-textarea-window (list x y width height)))
    ;; fix height if needed
    (when fit-height
      (let (min max)
        (loop for x in strings do
             (if (and (consp x) (eq (first x) :render-at))
                 (let ((h-cand (third x)))
                   (cond ((null min) (setf min h-cand))
                         ((null max) (setf max h-cand))
                         (t (when (< h-cand min) (setf min h-cand))
                            (when (> h-cand max) (setf max h-cand)))))))
        (setf height (+ (- max min) *primary-font-height* (* 2 *message-textarea-height-offset-between-messages*)))))
    (push
     (make-hover :x x
                 :y y
                 :mover mover
                 :width width
                 :height height
                 :box-color (etypecase color
                              (string (hex-string-to-color color))
                              (sdl:color color))
                 :alpha alpha
                 :draw-rect draw-rect
                 :ttl ttl
                 :formatted-strings strings)
     *hover-messages*)))

(defun attenuation-lookup (x y map)
  (let* ((map-point (aref map y x))
         (att (map-cell-attenuation (gethash map-point *map-cells-by-number*))))
    (etypecase att
      (float att)
      (cons (let ((res (member *weather* att)))
              (if res
                  (second res)
                  (first att)))))))

(defun clear-intensity-map ()
  (loop for y below (array-dimension *intensity-map* 0) do
       (loop for x below (array-dimension *intensity-map* 1) do
            (setf (aref *intensity-map* y x) 0.0))))

(defun clear-explored-map ()
  (loop for y below (array-dimension *explored-map* 0) do
       (loop for x below (array-dimension *explored-map* 1) do
            (setf (aref *explored-map* y x) 0.0))))

(defun update-intensity-map (x y intensity)
  (clear-intensity-map)
  (setf (aref *intensity-map* y x) intensity)
  (let ((sights (line-of-sight x y
                               (array-dimension *level* 0)
                               (array-dimension *level* 1)
                               #'(lambda (x y) (funcall #'detome::attenuation-lookup x y detome::*level*)) 
			       *light-intensity-cutoff*)))
    (loop for sight in sights do
         (destructuring-bind (x y rel-intensity) sight
           (setf (aref *intensity-map* y x)
                 (* intensity rel-intensity)
                 (aref *explored-map* y x)
                 0.25)))))

(update-intensity-map (x *player*) (y *player*) 1.0)


;; TODO remove this
(setf black::*event-list-quit-event* nil)

(add-quit-event #'common-quit-event)

;; TODO remove this
(setf black::*event-list-key-down-event* nil)

(defun press-escape-to-quit-event (&key key &allow-other-keys)
  (cond ((sdl:key= key :sdl-key-escape)
         (sdl:push-quit-event)
         t)
        (t nil)))

(add-key-down-event #'press-escape-to-quit-event)

(defun move-map-window-if-needed ()
  ;; The map window should stay relatively centered on the player
  ;; unless we are near an edge in which case the map window fills the
  ;; view.

  (let ((level-height (array-dimension *level* 0))
	(level-width (array-dimension *level* 1))
	(window-width (nth 2 *map-window*))
	(window-height (nth 3 *map-window*)))

    ;; handle x direction
    (cond ((< (x *player*) (/ window-width 2))
	   (setf (nth 0 *map-window*) 0))
	  ((> (x *player*) (- level-width (/ window-width 2)))
	   (setf (nth 0 *map-window*) (- level-width window-width)))
	  (t (setf (nth 0 *map-window*) (- (x *player*) (/ window-width 2)))))

    ;; handle y direction
    (cond ((< (y *player*) (/ window-height 2))
	   (setf (nth 1 *map-window*) 0))
	  ((> (y *player*) (- level-height (/ window-height 2)))
	   (setf (nth 1 *map-window*) (- level-height window-height)))
	  (t (setf (nth 1 *map-window*) (- (y *player*) (/ window-height 2)))))))

(defun actor-not-at (x y)
  ;; test other monsters
  (dolist (actor *monsters-in-level*)
	(when (and (= (x actor) x)
			   (= (y actor) y))
	  (return-from actor-not-at nil)))
  ;; test player
  (when (and (= (x *player*) x)
			 (= (y *player*) y))
	(return-from actor-not-at nil))
  t)

(defun walkable (x y)
  (let ((level-width (array-dimension *level* 1))
	(level-height (array-dimension *level* 0)))
    (unless (and (>= x 0) (>= y 0) (< x level-width) (< y level-height))
      (return-from walkable (values nil :world-extents))))
  (unless (actor-not-at x y)
	(return-from walkable (values nil :actor)))
  (let* ((map-point (aref *level* y x)))
    (map-cell-walkable (gethash map-point *map-cells-by-number*))))

(defun add-damage-hover (actor amount)
  (declare (actor actor))
  (let ((text `((:color "ff0000") ,amount))
        (x-y (multiple-value-list (get-screen-pos-of actor))))
    (make-hover-message (+ 8 (nth 0 x-y)) (nth 1 x-y) 100 "ff0000" #xa0 text :mover (list nil -3) :ttl 8 :draw-rect nil :fit-height t)))

(defun rand (max &optional (min 0))
  (let ((diff (- max min))
        (r (random 1.0)))
    (if (<= diff 0) 
        max
        (+ min (* r diff)))))

(defun hit (actor1 actor2 dmg)
  (assert (eq actor1 *player*))
  (let ((dmg-txt (format nil "~d" (round dmg))))
    (cond ((> dmg 0)
           (textarea-log `("hit " (:color "00ff00") ,(name (mon-type actor2)) (:color "ffffff") " for " (:color "0000ff") 
                                  ,dmg-txt
                                  (:color "ffffff") " damage"))
           (add-damage-hover actor2 dmg-txt)
           (decf (hp actor2) dmg))
          (t (textarea-log `((:color "ff0000") "missed " (:color "00ff00") ,(name (mon-type actor2))))
             (add-damage-hover actor2 "missed")))))
  
(defun attack (actor1 actor2)
  (destructuring-bind (attmin attmax) (att-r actor1)
    (destructuring-bind (defmin defmax) (def-r actor2)
      (destructuring-bind (dmgmin dmgmax) (dmg-r actor1)
        (let* ((a1-att (rand attmax attmin))
               (a1-def (rand defmax defmin))
               (dmg (rand dmgmax dmgmin)))
          (hit actor1 actor2 (if (> a1-att a1-def) dmg 0)))))))

(defun monsters-at (x y)
  (loop for mon in *monsters-in-level* when (and (= (x mon) x) (= (y mon) y)) collect mon))

(defun attempt-move-player (delta-x delta-y)
  (with-slots (x y) *player*
    (let* ((new-x (+ x delta-x))
           (new-y (+ y delta-y))
           (monsters (monsters-at new-x new-y)))
	  (multiple-value-bind (walkable walkable-reason) (walkable new-x new-y)
		(cond ((and (not walkable)
					(not (eq walkable-reason :actor)))
			   ;; we're blocked and not due to a monster or another
			   ;; actor
			   (textarea-log `("Blocked going " (:color "0000ff") 
												,(ecase delta-x
														(1 (ecase delta-y
															 (0 "east")
															 (1 "southeast")
															 (-1 "northeast")))
														(0 (ecase delta-y
															 (1 "south")
															 (-1 "north")))
														(-1 (ecase delta-y
															  (1 "southwest")
															  (0 "west")
															  (-1 "northwest"))))
												(:color ,sdl:*white*) "!")))
			  (monsters (attack *player* (typecase monsters
										   (cons (first monsters))
										   (t monsters)))
						(take-turn))
			  (t (setf x new-x y new-y)
				 (take-turn)))))))

(defun add-health-hover ()
  (let ((text '((:color "ffffff") "This is a transparent hover test. Your hit points, mana, etc. will appear here. In " (:color "ff0000") "color!")))
    (make-hover-message 10 10 (- (* 32 (nth 2 *map-window*)) 10) "00ffff" #x80 text :ttl 100 :mover (list nil 4) :draw-rect nil :fit-height t)))

(defmacro gen-move-command (key-symbol delta-x delta-y)
  ``((sdl:key= key ,,key-symbol)
     (make-and-send-message 
      :sender "event processor" :receiver "global message receiver"
      :action #'(lambda (sender receiver)
                  (attempt-move-player ,,delta-x ,,delta-y)
                  (move-map-window-if-needed)
                  (update-intensity-map (x *player*) (y *player*) 1.0)))
     t))

(defun scroll-map-with-arrows-event (&key key &allow-other-keys)
	(cond #.(gen-move-command :sdl-key-kp4 -1 0)
		  #.(gen-move-command :sdl-key-kp7 -1 -1)
		  #.(gen-move-command :sdl-key-kp8 0 -1)
		  #.(gen-move-command :sdl-key-kp9 1 -1)
		  #.(gen-move-command :sdl-key-kp6 1 0)
		  #.(gen-move-command :sdl-key-kp3 1 1)
		  #.(gen-move-command :sdl-key-kp2 0 1)
		  #.(gen-move-command :sdl-key-kp1 -1 1)
		  ((sdl:key= key :sdl-key-r)
		   (make-and-send-message
			:sender "event processor" :receiver "global message receiver"
			:action #'(lambda (sender receiver)
						(mid-displace 10 10 :array *level* :roughness 100.0 
									  :post-filter-func #'(lambda (val)
															(map-cell-number (gethash 
																			  (cond ((> val 0.85) "tree-on-mountain")
																					((> val 0.65) "mountain")
																					((> val 0.45) "tree-on-plain")
																					(t "plain"))
																			  *map-cells-by-name*))))
						(update-intensity-map (x *player*) (y *player*) 1.0)))
		   t)
		  ((sdl:key= key :sdl-key-h)
		   (make-and-send-message 
			:sender "event processor" :receiver "global message receiver"
			:action #'(lambda (sender receiver)
						(add-health-hover)))
		   t)
		  ((sdl:key= key :sdl-key-j)
		   (make-and-send-message
			:sender "event processor" :receiver "global message receiver"
			:action #'(lambda (sender receiver)
						(add-damage-hover *player* -5)))
		   t)
		  (t nil)))


(add-key-down-event #'scroll-map-with-arrows-event)

(defmacro clip (value a b)
  `(if (<= ,value ,a)
       ,a
       (if (>= ,value ,b)
           ,b
           ,value)))

(defun los-intensity-at-point (x y)
  (aref *intensity-map* y x))

(defun total-intensity-at-point (x y)
  (let ((map-int (los-intensity-at-point x y)))
    (if (plusp map-int)
        ;; if the LOS includes this point then only return it's intensity
        map-int
        ;; otherwise return the explored map intensity
        (aref *explored-map* y x))))

(defun image-from-maps (x y)
  (let ((darken-amount (clip (- 1 (total-intensity-at-point x y))
                             0.0 1.0)))
    (let* ((map-point (aref *level* y x))
           (images (map-cell-image (gethash map-point *map-cells-by-number*))))
      (etypecase images
        (cons (loop for image in images collecting
                   (get-image image :darken darken-amount)))
        (string (list (get-image images :darken darken-amount)))))))

(defgeneric get-screen-pos-of (obj)
  (:documentation 
   "Returns the screen position of the given object as x and y
    values"))

(defmethod get-screen-pos-of ((obj actor))
  (values (* (- (x obj) (first *map-window*)) 32)
	  (* (- (y obj) (second *map-window*)) 32)))


(defun draw-player (interpolation)  
  (multiple-value-bind (x y) (get-screen-pos-of *player*)
    (sdl:draw-surface-at-* (get-image "player-front") x y)))

(defun draw-monsters (interpolation)  
  (dolist (mon *monsters-in-level*)
    (multiple-value-bind (x y) (get-screen-pos-of mon)
      (let ((darken-amount (clip (- 1 (los-intensity-at-point (x mon) (y mon)))
                                 0.0 1.0)))
        (when (< darken-amount 1.0)
          (sdl:draw-surface-at-* (get-image (image-name mon) :darken darken-amount) x y))))))

(defun draw-background (interpolation)
  (destructuring-bind (map-width map-height) (array-dimensions *level*)
    (loop for x from (max (first *map-window*) 0) below (min map-width
                                                             (+ (third *map-window*)
                                                                (first *map-window*))) do
         (loop for y from (max (second *map-window*) 0) below (min map-height
                                                                   (+ (fourth *map-window*)
                                                                      (second *map-window*))) do
              (let ((images (image-from-maps x y)))
                (loop for image in images do
                     (sdl:draw-surface-at-* image
                                            (* (- x (first *map-window*)) 32)
                                            (* (- y (second *map-window*)) 32))))))))

(defvar *message-area-strings* nil)

(defun draw-message-textarea (strings interpolation)
  (let (pos-x pos-y (color (sdl:color :r #xff :g #xff :b #xff)))
    (loop for message in strings do
	 (etypecase message
	   (cons (ecase (car message)
		   (:render-at (setf pos-x (second message)
				     pos-y (third message)))
		   (:color (setf color (second message)))))
	   (string
	    (sdl:draw-string-solid-* message
				     pos-x
				     pos-y
				     :color color
				     :font *primary-font*))))))

(defun draw-hover-messages (interpolation)
  (loop for hover in *hover-messages* do
       (draw-message-textarea (hover-formatted-strings hover) interpolation)
       (when (hover-draw-rect hover)
         (let ((rect-surf (sdl:create-surface (hover-width hover) (hover-height hover) :alpha (hover-alpha hover))))
           (sdl:flood-fill-* 0 0 :surface rect-surf :color (hover-box-color hover))
           (sdl:draw-surface-at-* rect-surf (hover-x hover) (hover-y hover))))))

(define-object
    :name "primary renderer"
  :render-cb #'(lambda (obj interpolation)
                 (draw-background interpolation)
                 (draw-monsters interpolation)
                 (draw-player interpolation)
                 (draw-hover-messages interpolation)
                 (draw-message-textarea *message-area-strings* interpolation)))


(defun populate-monsters ()
  (loop for x below (+ 10 (random (array-dimension *level* 0)) ) do
       (push (get-random-monster (random (array-dimension *level* 1))
                                 (random (array-dimension *level* 0))
                                 1 10)
             *monsters-in-level*)))

(define-object
    :name "render updater"
  :update-cb #'(lambda (obj)
		 (setf *primary-font* (sdl:initialise-default-font *primary-font-name*))
		 (sdl:enable-alpha t :surface sdl:*default-display*)
		 (sdl:enable-alpha t :surface sdl:*default-surface*)
                 (sdl:enable-key-repeat 500 50)
		 (define-images)         
		 (clear-explored-map)
		 (clear-render-list)		 
		 (populate-monsters)
		 (add-to-render-list "primary renderer"))
  :update-cb-control :one-shot)

(define-object
    :name "message textarea updater"
  :update-cb #'(lambda (obj)
                 (multiple-value-setq (*message-area-strings* *message-area-buffer*)
                   (update-message-strings
                    (second (black::update-cb-control obj))
                    *message-area-buffer*
                    :rawtext *message-area-rawtext*))
                 (setf *message-area-rawtext* nil))
  :update-cb-control '(:seconds 0.1))

(define-object
    :name "hover mover updater"
  :update-cb #'(lambda (obj)
                 (loop for hover in *hover-messages* do
                      (destructuring-bind (move-x move-y) (hover-mover hover)
                        (loop for string in (hover-formatted-strings hover) do
                             (when (and move-x
                                        (typep string 'cons)
                                        (eq :render-at (first string)))
                               (setf (second string) (+ (second string) move-x)))
                             (when (and move-y
                                        (typep string 'cons)
                                        (eq :render-at (first string)))
                               (setf (third string) (+ (third string) move-y)))))))
  :update-cb-control '(:ticks 1))

(define-object
    :name "weather builder"
  :update-cb #'(lambda (obj)
		 (ecase *environment*
		   (:outside (cond ((eq *weather* :clear)
				    (setf *weather* :dark)
				    (textarea-log '("You feel the clastrophobic oppression of darkness."))
				    (update-intensity-map (x *player*) (y *player*) 1.0))
				   ((eq *weather* :dark)
				    (setf *weather* :clear)
				    (textarea-log '("The shadows become slightly less threatening as night becomes day."))
				    (update-intensity-map (x *player*) (y *player*) 1.0))))))
  :update-cb-control :none);; `(:seconds ,*day-night-cycle-in-seconds*))

(define-object :name "event processor")

(define-object :name "global message receiver"
  :update-cb-control '(:ticks 1))

(define-object
    :name "hover remover"
  :update-cb #'(lambda (obj)
                 (let (hovers-to-remove)
                   (dolist (hover *hover-messages*)
                     (when (hover-ttl hover)
                       (decf (hover-ttl hover))
                       (and (<= (hover-ttl hover) 0)
                            (push hover hovers-to-remove))))
                   (dolist (hover hovers-to-remove)
                     (setf *hover-messages* (delete hover *hover-messages* :test #'eq)))))
  :update-cb-control '(:ticks 1))

(defun remove-monster (monster)
  (setf *monsters-in-level* (delete monster *monsters-in-level*))
  (remove-object (name monster)))

(define-object
    :name "monster garbage collector"
  :update-cb #'(lambda (obj)
                 (dolist (mon *monsters-in-level*)
                   (when (<= (hp mon) 0)
                     (remove-monster mon)
                     (textarea-log `((:color "00ff00") ,(name (mon-type mon)) (:color "ffffff") " dies!"))))))

(defun detome (&optional (fullscreen nil))
  ;; reinit
  (setf (update-cb-control (get-object-by-name "render updater")) :one-shot)

  (textarea-log '("Welcome to " (:color "ff0000") "Detome" (:color "ffffff") "! The goal of this game is to hunt down the dark wizard Varlok and have some good looting fun on the way.")
		:ttl 20)
  (mainloop :sdl-flags (if fullscreen sdl:sdl-fullscreen 0)))

