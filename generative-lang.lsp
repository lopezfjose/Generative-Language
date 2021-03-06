
; Generative Language


(defparameter *NOUNS* '(man ball woman tree table))

(defun sentence ()
    (append (noun-phrase) (verb-phrase)))

(defun noun-phrase ()
    (append (Article) (Noun)))

(defun verb-phrase ()
    (append (Verb) (noun-phrase)))

(defun Article ()
    (one-of '(a the)))

(defun getNoun (nouns-list)
    (one-of nouns-list))

(defun Noun ()
    (one-of '(man ball woman table)))

(defun Verb ()
    (one-of '(hit took saw liked)))

(defun one-of (set)
    "Pick one element of the set and make a list of it."
    (list (random-elt set)))

(defun random-elt (choices)
    "Choose an element from a list at random."
    (elt choices (random (length choices))))

