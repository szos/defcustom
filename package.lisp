;;;; package.lisp

(defpackage #:defconfig
  (:use #:cl)
  (:import-from #:trivial-cltl2 #:compiler-let)
  (:export #:defconfig ; main macro
	   #:defconfig-accessor 
	   #:*setv-permissiveness*
	   
	   ;; setters and searchers
	   #:setv
           #:with-atomic-setv
	   #:with-atomic-setv*
	   #:reset-place
	   #:reset-computed-place
	   #:clean-previous-value 
	   #:search-configurable-objects
	   #:tag-configurable-place

	   ;; readers
	   #:config-info-predicate
	   #:config-info-coercer

	   #:config-info-db
	   #:config-info-place

	   #:config-info-default-value
	   #:config-info-previous-value

	   #:config-info-name
           #:config-info-tags 
	   #:config-info-documentation
	   #:config-info-valid-values-description

	   ;; errors
	   #:config-error
	   #:invalid-datum-error
	   #:invalid-coerced-datum-error
	   #:no-config-found-error
	   #:database-already-exists-error
	   #:untrackable-place-error
	   #:no-bound-default-value-error
	   #:not-resettable-place-error
	   #:setv-wrapped-error
           
	   ;; database creation and lookup
	   #:define-defconfig-db
	   #:get-db
	   #:get-db-var
	   #:list-dbs
	   #:delete-db))
