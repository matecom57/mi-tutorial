import sys
import re

def procesa_texto(ss=''):
  ssn = ''

  while len(ss) > 0:
    if '](./' in ss:
      dd = busa_remplaza_diagonal(ss)
    elif '](http' in ss:
      dd = busa_remplaza_http(ss)
    else:
      dd = [ss,'']
    ssn = ssn + dd[0]
    ss = dd[1]
  return ssn

def busca_gato(ss=''):
  nl = len(ss)

  i = 1
  while i < nl:
    if ss[i] == '#':
      i = i+1
    else:
      i1 = i+1
      i = nl
  ss = ss[i1:] + '----------------------------------------\n'
  return ss

def busa_remplaza_diagonal(ss=''):
  i = ss.find('](./')
  i2 = ss.find(')', i)
  ii = i-1  
  while ii >= 0:  
    if ss[ii] == '[':
      i1 = ii
      ii = -1
    else:
      ii = ii-1  
  texto1 = ss[i1+1:i]
  texto1 = ReplazoVocales(texto1)
  texto2 = ss[i+4:i2]
  texto2 = ReplazoVocales(texto2)
  return [ss[:i1] + ':doc:' + '`' + texto2 + '`', ss[i2+1:]]

  
def busa_remplaza_http(ss=''):
  i = ss.find('](http')
  i2 = ss.find(')', i)
  ii = i-1
  while ii >= 0:
    if ss[ii] == '[':
      i1 = ii
      ii = -1
    else:
      ii = ii-1
  texto1 = ss[i1+1:i]
  texto1 = ReplazoVocales(texto1)
  texto2 = ss[i+2:i2]
  texto2 = ReplazoVocales(texto2)
  return  [ss[:i1] + ' `' + texto1 + ' <' + texto2 + '>`_ ',  ss[i2+1:]]


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
datos = filin.readlines()
filin.close()

filon = open(file+'.rst', 'w')

nl = len(datos)


for i in range(nl):
   ss = datos[i]
   if ss[0] == '#':
      ss =busca_gato(ss)
   elif '](./' in ss:
      ss = procesa_texto(ss)
   elif '](http' in ss:
      ss = procesa_texto(ss)
   filon.write(ss)

filon.close()



