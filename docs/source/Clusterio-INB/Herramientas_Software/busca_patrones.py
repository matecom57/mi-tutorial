import numpy as np
import matplotlib.pyplot as plt

def Buscar(DD=''):
  '''
  buscar patron recursivamente en un string
  '''
  global Resto
  patron = '](./'
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
    Buscar(DD[i2+2:])

def BuscarHTTP(DD=''):
  '''
  buscar http
  '''
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
Buscar(datos)
filg.close()
#-------------------------------------------------

datos = Resto
filh = open('html.txt', 'w')
Resto = ''
BuscarHTTP(datos)
filh.close()


