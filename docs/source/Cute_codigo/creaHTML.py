ss1='''
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
'''

ss2='''
</body>
</html>
'''

file = 'fac_old'

filin = open(file + '.txt', 'r')
datos=filin.readlines()

filon = open(file + '.html', 'w')
filon.write(ss1)

pati='./fac_old/'

i=1
for s in datos:
  ss = '<img src="'+ pati +s + '" alt="' + 'paso'+str(i) + '">'
  i = i+1
  filon.write(ss)
  filon.write('')
filon.write(ss2)
filon.close()






