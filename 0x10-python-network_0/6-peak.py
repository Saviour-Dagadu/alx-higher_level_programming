i#!/usr/bin/python3
""" Test function find_peak """
find_peak = __import__('6-peak').find_peak

# Test cases
print(find_peak([1, 2, 4, 6, 3]))               # Output: 6
print(find_peak([4, 2, 1, 2, 3, 1]))            # Output: 4 or 3
print(find_peak([2, 2, 2]))                     # Output: 2
print(find_peak([]))                            # Output: None
print(find_peak([-2, -4, 2, 1]))                # Output: 2
print(find_peak([4, 2, 1, 2, 2, 2, 3, 1]))      # Output: 4
