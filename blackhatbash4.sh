#!/bin/bash

# Multiplicación con let
let result="4 * 5"
echo "Resultado 1: $result"

# Multiplicación con doble paréntesis
result=$((5 * 5))
echo "Resultado 2: $result"

# Suma con expr
result=$(expr 5 + 505)
echo "Resultado 3: $result"

