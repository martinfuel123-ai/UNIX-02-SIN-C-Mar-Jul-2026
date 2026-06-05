#!/bin/bash

IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)

echo "Array original:"
echo "${IP_ADDRESSES[*]}"

unset IP_ADDRESSES[1]

echo "Despues de eliminar el segundo elemento:"
echo "${IP_ADDRESSES[*]}"

IP_ADDRESSES[0]="192.168.1.10"

echo "Despues de reemplazar el primer elemento:"
echo "${IP_ADDRESSES[*]}"
