#!/bin/bash

greet() {
  echo "Hello, $1"
}

sum() {
  echo $(($1 + $2))
}

greet "World"

result=$(sum 5 7)
echo "Sum is: $result"