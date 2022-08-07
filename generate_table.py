#!/usr/bin/python3
# Script for generating the z-table of precomputed
# atan(2^-i) values for lookup during CORDIC runtime


import math


def main():
    vals = input("How many z values? ")
    vals = int(vals)

    for i in range(vals):
        argument = math.pow(2, (-1 * i))
        angle = math.atan(argument)
        image = int(angle * math.pow(2, vals))
        if i < vals:
            print(f"{image}, ", end='')
        else:
            print(f"{image} ")


if __name__ == "__main__":
    main()