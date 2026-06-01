#!/bin/bash

PUBLISHER="No Starch Press"

print_name() {
  local name
  name="Black Hat Bash"
  echo "${name} by ${PUBLISHER}"
}

print_name

echo "Variable ${name} will not be printed because it is a local variable."

# 1. What is the difference between global and local variables in Bash?
# Global variables can be accessed anywhere in the script, including inside functions.
# Local variables are only accessible inside the function where they are declared using "local".

# 2. What are the main characteristics of global and local variables in Bash?
# Global variables exist for the entire script execution.
# Local variables exist only within a function and disappear after the function ends.

# 3. How does function invocation affect variable scope in Bash scripts?
# When a function is called, it can access global variables.
# If a variable is declared with "local" inside the function, it is isolated and does not affect the global scope.