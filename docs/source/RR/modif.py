import sys

print (sys.argv[0])
print (sys.argv[1])
print (len(sys.argv))

file = sys.argv[1]

fili = open(file+'.rst', 'r')
filo = open(file + 'N.rst', 'w')

datos = fili.readlines()
nd = len(datos)
fili.close()

filo.write(datos[0])
filo.write(datos[1])
filo.write(datos[2])

for i in range(3,nd):
   ss = datos[i]
   filo.write(ss)
   filo.write('\n')

filo.close()
