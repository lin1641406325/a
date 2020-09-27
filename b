import math
import random
import cProfile
import profile
from fractions import Fraction

def zsOperation():
    qesd = int(input())
    for a in range(qesd):
        rdsign = random.choice(['+','-','*','/'])  
        rdnum1 = random.randint(0,100)
        rdnum2 = random.randint(0,100)
        if rdnum1 < rdnum2:
            rdnum1 = max(rdnum1, rdnum2)
            rdnum2 = min(rdnum1, rdnum2)
            zsResult(rdsign,rdnum1,rdnum2)
        else:
            zsResult(rdsign,rdnum1,rdnum2)

def zfsOperation():
    qesd = int(input())
    for b in range(qesd):
        rdsign = random.choice(['+','-','*','/'])  
        sdnum1 = random.randint(0,100)
        mdnum1 = random.randint(1,100)
        if sdnum1<mdnum1:
            zfs1 = Fraction(sdnum1, mdnum1)
        else:
            zfs1 = Fraction(mdnum1, sdnum1)
        sdnum2 = random.randint(1,100)
        mdnum2 = random.randint(1,100)
        if sdnum2<mdnum2:
            zfs2 = Fraction(sdnum2, mdnum2)
        else:
            zfs2 = Fraction(mdnum2, sdnum2)
        if zfs1 < zfs2:
            zfs1 = max(zfs1, zfs2)
            zfs2 = min(zfs1, zfs2)
            zfsResult(rdsign,zfs1,zfs2)
        else:
            zfsResult(rdsign,zfs1,zfs2)

def zsResult(zss,n1,n2):
    if zss == '+':
        print('{} + {} = {}'.format(n1,n2,n1 + n2))
    elif zss == '-':
        print('{} - {} = {}'.format(n1,n2,n1 - n2))
    elif zss == '*':
        print('{} * {} = {}'.format(n1,n2,n1 * n2))
    elif zss == '/':
        if n2 == 0:
            print('***除数不能为零***')
        else:
            print('{} / {} = {}'.format(n1,n2,n1 / n2))
    else:
        print('输入有误，请重新输入！')

def zfsResult(zfss,m1,m2): 
    if zfss == '+':
        print('{} + {} = {}'.format(m1,m2,jhd(m1 + m2)))
    elif zfss == '-':
        print('{} - {} = {}'.format(m1,m2,jhd(m1 - m2)))
    elif zfss == '*':
        print('{} * {} = {}'.format(m1,m2,jhd(m1 * m2)))
    elif zfss == '/':
        if m2 == 0:
            print('***除数不能为零***')
        else:
            print('{} / {} = {}'.format(m1,m2,jhd(m1 / m2)))
    else:
        print('输入有误，请重新输入！')

def jhd(f):  
    a=f.numerator  
    b=f.denominator  
    if a%b==0:  
        return '%d'%(a/b)
    elif a<b:  
        return '%d%s%d' % (a,'/',b)
    else:       
        c=int(a/b)
        a = a - c * b
        return '%d%s%d%s%d' % (c,'’',a,'/',b)

def main():
    fangshi = str(input())
    if fangshi == 'zs':
        zsOperation()
    elif fangshi == 'zfs':
        zfsOperation()
    else:
        print('输入有误，请重新输入！')

cProfile.run('main()') 
main()
