#!/usr/bin/python3
# Script for generating the z-table of precomputed
# atan(2^-i) values for lookup during CORDIC runtime


import math


def main():
    vals = input("How many z values? ")
    for i in range(int(vals)):
        argument = 2**(i*-1)
        angle = math.atan(argument)
        image = int(angle*(2**23))
        if i < int(vals) -1:
            print(f"{image}, ", end='')
        if i == int(vals) -1:
            print(f"{image} ")


if __name__ == "__main__":
    main()