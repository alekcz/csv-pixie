# csv-pixie

csv-pixie is a library for working with CSV files in [Pixie](https://github.com/pixie-lang/pixie).


## Install

Add the following dependency to your `project.edn` file:

    [alekcz/csv-pixie "0.0.1-alpha"]

## Documentation


### read-csv

Reads data from csv and returns sequence of maps with the header row as keys

```clojure
user=> (read-csv "./lisp.csv" ",")
({:name pixie, :interop c}  {:name hy, :interop python})
```