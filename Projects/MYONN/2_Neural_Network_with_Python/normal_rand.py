# normal probability distribution rando generator
import numpy

inodes = 3
hnodes = 4
onodes = 5

wih = numpy.random.normal(0.0, pow(hnodes, -0.5), (hnodes, inodes))
who = numpy.random.normal(0.0, pow(onodes, -0.5), (onodes, hnodes))

print(wih)
print(who)
