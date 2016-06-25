(ns csv-pixie.test-core
        (:require [pixie.test :refer [deftest assert assert-throws?]]
                  [core:refer :all]))
;;pixie doesnt have testing yet...
(defn testing [text & body])

(def is assert)
(deftest test-name
  (testing "a function"
    (is (= true true))
    (is (= true (not false)))
    (is (= true (not (not true))))))