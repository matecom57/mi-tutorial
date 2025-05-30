import sys
import re

def busca_gato(ss=''):
  global SS
  
  ss = ss.split('\n')
  nl = len(ss)

  for i in range(nl):
    s1 = ss[i]
    if len(s1) > 0:
      if s1[0] == '#':
        ls1 = len(s1)
        j = 1
        while j < ls1:
          if s1[j] == '#':
            j = j+1
          else:
            j1 = j+1
            j = ls1+1
            s1 = '\n\n' + s1[j1:] + '\n----------------------------------------\n\n'
    SS = SS + s1  


def busa_remplaza_diagonal(ss=''):
  i = ss.find('](./')
  if i > 1:   
    i2 = ss.find(')', i)
    ii = i-1  
    while ii > 0:  
      if ss[ii] == '[':
        i1 = ii
        ii = -1
      else:
        ii = ii-1  
    texto1 = ss[i1+1:i]
    texto1 = ReplazoVocales(texto1)
    texto2 = ss[i+4:i2]
    texto2 = ReplazoVocales(texto2)
    return ss[:i1] + ':doc:' + '`' + texto2 + '`' + busa_remplaza_diagonal(ss[i2+1:])
  else:   
    return ss

  

def busa_remplaza_diagonal_Todas(ss=''):
  global SS

  ss = ss.split('\n')
  nl = len(ss)   
      
  for i in range(nl):
    s1 = ss[i]   
    if len(s1) > 0:
      SS = SS + busa_remplaza_diagonal(s1)
    else:
      SS = SS + '\n' + '\n'

def busa_remplaza_http(ss=''):
  i = ss.find('](http')
  if i > 1:
    i2 = ss.find(')', i)
    ii = i-1
    while ii > 0:
      if ss[ii] == '[':
        i1 = ii
        ii = -1
      else:
        ii = ii-1
    texto1 = ss[i1+1:i]
    texto1 = ReplazoVocales(texto1)
    texto2 = ss[i+2:i2]
    texto2 = ReplazoVocales(texto2)
    return  ss[:i1] + ' `' + texto1 + ' <' + texto2 + '>`_ ' + busa_remplaza_http(ss[i2+1:])
  else:
    return ss

def busa_remplaza_http_Todas(ss=''):
  global SS
          
  ss = ss.split('\n')
  nl = len(ss) 
            
  for i in range(nl):
    s1 = ss[i]
    if len(s1) > 0:
      SS = SS + busa_remplaza_http(s1)
    else:
      SS = SS + '\n' + '\n'


def ReplazoVocales(ss=''):
  ss = ss.replace('á', 'a')
  ss = ss.replace('é', 'e')
  ss = ss.replace('í', 'i')
  ss = ss.replace('ó', 'o')
  ss = ss.replace('ú', 'u')
  ss = ss.replace(':-', '-')
  return ss
  
file = sys.argv[1]

filin = open(file+'.md', 'r')
datos = filin.read()
filin.close()


filon = open(file+'.rst', 'w')

SS=''

busca_gato(datos)

#print(SS)

datos = SS

SS = ''

busa_remplaza_diagonal_Todas(datos)

datos = SS

SS= ''

busa_remplaza_http_Todas(datos)


print(SS)

'''
filon.write(SS)
filon.close()

'''


