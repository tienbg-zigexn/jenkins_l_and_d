#!/bin/sh

tail -n +2 ./random_names.csv | while read -r line; do
  name=$(echo "$line" | cut -d, -f1)
  lastname=$(echo "$line" | cut -d, -f2)
  age=$(echo "$line" | cut -d, -f3)

  # we should not use counter and manually create id for data. I don't think
  # that is a good practice.
  mysql -u root -psuperstrongpassword people -e "insert into register (name, lastname, age) values ('$name', '$lastname', $age)"
done
