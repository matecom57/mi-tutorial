file = 'sal.txt'

fil = open(file, 'r')

datos = fil.read()

datos = datos.replace('\n', ' ')

datos = datos.split(' ')

datos = set(datos)

datos = list(datos)

datos.sort()

def checa(ss = ''):
  lista = ['“nombre_ra', 'últim', 'viene', 'view', 'visit', 'visual', 'verdad', 'verde', 
'verifi', 'ventana', 'ver', 'version', 'vertical', 'verá', 'vez', 'viaja', 'visible',
'vis', 'voxel']
  ban = 0
  for mm in lista:
    if mm in ss:
      ban = 1
  return ban

sali = []

ln = len(datos)

ss1 = datos[0]
l1 = len(ss1)
i =1

while i < ln:
  ss2 = datos[i]
  print(ss2)
  l2 = len(ss2)
  ll = l1
  if (l2 < l1):
    ll = l2
  if ll > 3:
    ban = 0
    for j in range(3):
      if ss1[j] != ss2[j]:
        ban = 1
    if ban == 1:
      sali.append(ss1)
  ss1 = ss2
  i = i+1

print(sali)


