# Technical Info

For thoes who want to know how I did this.

It sets a string to be the output of ipconfig then makes that a list then loops trough it until it finds valid lines that could be it then looks erlyer in the list and if it finds a value that means its correct it prints it out.

Im using a [3rd party regex library](https://github.com/nitely/nim-regex) because the builtin one requires something else.
