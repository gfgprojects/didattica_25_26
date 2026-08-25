from scipy.optimize import fsolve
from math import sin
import numpy

fx=numpy.empty((2,))
def equations(x):
    fx[0]=x[0]**2+x[1]**2-1
    fx[1]=sin(numpy.pi*0.5*x[0])+x[1]**3
    return fx

x0=(1,2)
x, y =  fsolve(equations,x0)

print(x, y)
