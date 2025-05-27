import sys
import re

def busca_gato(ss=''):
  global SS
  print(ss)
  print('=================================')
  patron1 = re.compile('\n#+')
  patron2 = re.compile('#*\n')

  pos1 = patron1.search(ss)
  if pos1 != None:
    ii = pos1.span()
    i1 = ii[0]
    i2 = ii[1]
    print(ii)
    pos2 = patron2.search(ss, i2)
    jj = pos2.span()
    j1 = jj[0]
    j2 = jj[1]
    print(jj)
    SS = SS + ss[:i1]+ '\n\n' + ss[i2+1:j1] + '\n----------------------------------\n\n'
    busca_gato(ss[j2+1:])
#  else:  
#    SS = SS + ss
  

def busa_remplaza_diagonal(ss=''):
  global SS
  i = ss.find('](./')
  if i > 1:
    SS = SS + ss[:i]
    i2 = ss.find(')', i)
    ii = i-1
    while ii > 0:
      if ss[ii] == '[':
        i1 = ii
        print(i1)
        ii = -1
      else:
        ii = ii-1
    texto1 = ss[i1+1:i]
    print(texto1)
    texto1 = ReplazoVocales(texto1)
    print(texto1)
    texto2 = ss[i+4:i2]
    print(texto2)
    texto2 = ReplazoVocales(texto2)
    print(texto2)
    SS = SS + ' :doc:`' + texto2 + '` '
    busa_remplaza_diagonal(ss[i2+1:])
#  else:
#    SS = SS + ss


def busa_remplaza_http(ss=''):
  global SS
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
    print(texto1)
    texto1 = ReplazoVocales(texto1)
    print(texto1)
    texto2 = ss[i+2:i2]
    print(texto2)
    texto2 = ReplazoVocales(texto2)
    print(texto2)
    SS = SS + ' `' + texto1 + ' <' + texto2 + '>`_ '
    busa_remplaza_http(ss[i2+1:])
#  else:
#    SS = SS + ss

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
print('salidad del gato---------------------')

datos = SS

print(datos)

print('salidad del gato---------------------')

datos = SS

busa_remplaza_diagonal(datos)

datos = SS

busa_remplaza_http(datos)


filon.write(SS)
filon.close()




