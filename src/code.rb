t='eval($s=('+d=34.chr;
s=32.chr+$s*i=8;
v=$VERSION||eval('begin;v=VERSION;rescue;v||RUBY_VERSION;end');
FONT;
w=4+v.length*u=15;
r=10.chr;
j=0;
while-24+w*u>i=1+i;
  x=i % w;
  x>0||t=t+d+'+'+r+d;
  k=i/w%12>2&&x%u>3&&x%u+i/w*11-34+('-._'.index(c=v[x/u,1])||c.hex+3)*99||0;
  k=f[k/6][k%6];
  t=t+s[k*j=k+j,1]
end;
print(t+d+').split.join[0,SIZ])#Y.E.'+r)
