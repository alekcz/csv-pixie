(ns csv-pixie.core
  (:require [pixie.io :as io]
            [pixie.string :as str]))


(defn- clean-cell [cell]
	(str/trim (str cell)))

(defn- parse-csv [data delimiter]
		(for [row (str/split-lines data)]
			(str/split row delimiter)))

(defn- open-csv [filename]
	(str/trim (io/slurp (io/open-read filename))))

(defn- make-map
  "Use header as keys and values from lines."
  [csv]
  (let [head (first csv) lines (rest csv)]
     (for [line lines] 
    	;(map #(zipmap (map keyword head) %1) line))))
		(zipmap (map keyword head) (map clean-cell line)))))

(defn getcolumn [dataset column]
  (let [data dataset]
    (for [d data]
      ((keyword column) d))))

(defn read-csv [filename delimiter]
	(make-map (parse-csv (open-csv filename) delimiter)))




