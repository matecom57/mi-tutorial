import numpy as np
import matplotlib.pyplot as plt

def Crea_vector_frecuencias(DD=''):
  datos = DD.split(' ')
  datos = set(datos)
  datos = list(datos)
  datos.sort()
  num = np.zeros(200)
  nl = 0

  for ss in datos:
    i = len(ss)
    num[i] = num[i] + 1

  x = range(200)
  plt.bar(x, num)
#  plt.plot([22,22],[0,10], 'r')
  plt.show()


def DespliegaMayores(DD='', num=0):
  datos = DD.split(' ')
  datos = set(datos)
  datos = list(datos)
  datos.sort()

  print(type(datos))  
  res = []
  while ss in datos:
    i = len(ss)
    print(i)
    if i > num:
      res.append(ss)
  return res

def Buscar(DD='', patron=''):
  global Resto
  i = DD.find(patron)
  if i > 0:
    i2 = DD.find(')',i)
    j = i-1
    while j > 0:
      if DD[j] == '[':
         i1 = j
         j = 0
      else:
         j = j-1
    print(DD[i1:i2+1])
    Resto = Resto + DD[:i1]
    filg.write(DD[i1:i2+1]+'\n')
    Buscar(DD[i2+2:],'](./')

def BuscarHTTP(DD=''):
  global Resto
  i = DD.find('](http')
  if i > 0:
    i2 = DD.find(')',i)
    j = i-1
    while j > 0:
      if DD[j] == '[':
         i1 = j
         j = 0
      else:
         j = j-1
    print(DD[i1:i2+1])
    Resto = Resto + DD[:i1]
    filh.write(DD[i1:i2+1]+'\n')
    BuscarHTTP(DD[i2+2:])


file = 'sal.txt'

fil = open(file, 'r')

datos = fil.read()

datos = datos.replace('\n', ' ')

Ndatos = len(datos)

filg = open('corchetes_paren.txt', 'w')
Resto = ''
Buscar(datos, '](./')
filg.close()

datos = Resto
filh = open('html.txt', 'w')
Resto = ''
BuscarHTTP(datos)
filh.close()

#print(Resto)

#Crea_vector_frecuencias(Resto)

res = DespliegaMayores(Resto, 22)

print(res)
