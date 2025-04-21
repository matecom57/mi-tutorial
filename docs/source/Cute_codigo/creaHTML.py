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

file = 'dir'

filin = open(file + '.txt', 'r')
datos=filin.readlines()

filon = open(file + '.html', 'w')
filon.write(ss1)

pati='./fac_TETA0.2_A10.4_B10.42_C10.19_dwx1_0.17_dwx2_0.17_dwp_0.17:b0.2d0.3e0.3/'

i=1
for s in datos:
  ss = '<img src="'+ pati +s + '" alt="' + 'paso'+str(i) + '">'
  i = i+1
  filon.write(ss)
  filon.write('')
filon.write(ss2)
filon.close()






