# all-ruby-quine

This program is a Quine, which works with all release versions of CRuby, from Ruby 0.49 (released in 1994) to Ruby 3.2.1 (released in 2023).

```
          eval($s=("t='eval($s=('+d=34.chr;s=3
        2.chr+$s*i=8;v=$VERSION||eval('begin;v=V
      ERSION;rescue;v||RUBY_VERSION;end');f=('?'*8
    +'A|'+'?'*20+'G?c'+'?'*15+'A@CXx@~@_`OpGxCxp@~pO
  xS|O~G?c?q?xC`AP|q?x_|C_xC_xO@H@cG?G?qA|_|_`GCpOxC|H
NFccqq@`_|OF@`?q?x_@x_x_`GB`O``O~G?C@qCxCxP@D@|G~C?pO|C?
  pO|C?AP|A~HNN`ccxC|Q@L@B"+"GpGpc@p?x_`GB`???_@FO|OB@
     xC|P`@?c?q?HPx@~@_`G@`????@L^`?q?x?xq@|_|O~GC`
        xA~@_@GBD').unpack('c*');w=4+v.length*u=
           15;r=10.chr;j=0;while-24+w*u>i=1+i
              ;x=i%w;x>0||t=t+d+'+'+r+d;k=
                 i/w%12>2&&x%u>3&&x%u+i
                    /w*11-34+('-._'.
                       index(c=v[
                         x/u,1]
                )||c.hex        +3)*99|
               |0;    k=f     [k/6   ][k%
                       6];    t=t     +s[
                      k*j     =k+     j,1
                 ]end;pr      int     (t+
                      d+'     ).s     pli
                       t.j    oin     [0,
               609    ])#     Y.E.   '+r)
                ").split        .join)#
```

## How to run

Run the docker image [rubylang/all-ruby](https://hub.docker.com/r/rubylang/all-ruby/). (Note: this image is over 2 GB.)

```
$ docker run --rm -ti rubylang/all-ruby
```

And download the source code.

```
$ ruby -ropen-uri -e 'print URI.open("https://...").read' > all-ruby-quine.rb
```

Then, you can run it with any version of ruby in `bin/` directory.

```
root@b8ad9e9e5895:/all-ruby# ./bin/ruby-0.49 /src/all-ruby-quine.rb
eval($s=("t='eval($s=('+d=34.chr;s=32.chr+$s*i=8;v=$VERSION||eval"+
"('begin;v=VERSION;rescue;v||RUBY_VERSION;end');f=('?'*8+'A|'+'?'"+
"*20+'G?c'+'?'*15+'A@CXx@~@_`OpGxCxp@~pOxS|O~G?c?q?xC`AP|q?x_|C_x"+
"C_xO@H       @cG?G?qA|_|_`GCpOxC|HNFcc     qq@`_|O         F@`?q"+
"?x_@    x_x    _`GB`O``O~G?C@qCxCxP@D      @|G~C?    pO|    C?pO"+
"|C?A   P|A~H   NN`ccxC|Q@L@BGpGpc@p?   x   _`GB`?   ??_@F   O|OB"+
"@xC|   P`@?c   ?q?HPx@~@_`G@`????@L   ^`   ?q?x?x    q@|_   |O~G"+
"C`xA   ~@_@G   BD').unpack('c*');w   =4+   v.lengt          h*u="+
"15;r   =10.c   hr;j=0;while-24+w*u   >i=   1+i;x=i%w;x>0|   |t=t"+
"+d+'   +'+r+   d;k=i/w%12>2&&x%u>3           &&x%u+i/w*11   -34+"+
"('-.    _'.    index(c=   v[x/u,1])||c.h   ex+3)*   99||    0;k="+
"f[k/6]       [k%6];t=t+   s[k*j=k+j,1]en   d;print         (t+d+"+
"').split.join[0,609])#Y.E.'+r)t='eval($s=('+d=34.chr;s=32.chr+$s"+
"*i=8;v=$VERSION||eval('begin;v=VERSION;rescue;v||RUBY_VERSION;en"+
"d');f=('?'*8+'A|'+'?'*20+'G?c'+'?'*15+'A").split.join[0,609])#Y.E.
```

```
root@b8ad9e9e5895:/all-ruby# ./bin/ruby-3.2.1 /src/all-ruby-quine.rb
eval($s=("t='eval($s=('+d=34.chr;s=32.chr+$s*i=8;v=$VERSION||eval('begin;v=VERSI"+
"ON;rescue;v||RUBY_VERSION;end');f=('?'*8+'A|'+'?'*20+'G?c'+'?'*15+'A@CXx@~@_`Op"+
"GxCxp@~pOxS|O~G?c?q?xC`AP|q?x_|C_xC_xO@H@cG?G?qA|_|_`GCpOxC|HNFccqq@`_|OF@`?q?x"+
"_@x_x        _`GB`O``O~G?C@qCxCxP@D         @|G~C?pO|C?pO|C?AP|A~HN    N`ccxC|Q"+
"@L@B   GpGp   c@p?x_`GB`???_@FO|OB   @xC|P   `@?c?q?HPx@~@_`G@`???     ?@L^`?q?"+
"x?xq@|_|O~GC   `xA~@_@GBD').unpack('c*');w   =4+v.length*u=15;r=1  0   .chr;j=0"+
";while-24+w   *u>i=1+i;x=i%w;x>0||t=t+d+'+   '+r+d;k=i/w%12>2&&x%u>3   &&x%u+i/"+
"w*11-3       4+('-._'.index(c=v[x/u,1])|    |c.hex+3)*99||0;k=f[k/6]   [k%6];t="+
"t+s[k*j=k+j   ,1]end;print(t+d+').spli    t.join[0,609])#Y.E.'+r)t='   eval($s="+
"('+d=34.chr;   s=32.chr+$s*i=8;v=$VE    RSION||eval('begin;v=VERSION   ;rescue;"+
"v||R   UBY_   VERSION;e   nd');f=(    '?'*8+'A|'+'?'*   20+'G?c'+'?'   *15+'A@C"+
"Xx@~@        _`OpGxCxp@   ~pOxS|O~           G?c?q?xC   `AP|q?x_|         C_xC_"+
"xO@H@cG?G?qA|_|_`GCpOxC|HNFccqq@`_|OF@`?q?x_@x_x_`GB`O``O~G?C@qCxCxP@D@|G~C?pO|"+
"C?pO|C?AP|A~HNN`ccxC|Q@L@BGpGpc@p?x_`GB`???_@FO|OB@xC|P`@?c?q?HPx@~@_`G@`????@L"+
"^`?q?x?xq@|_|O~GC`xA~@_@GBD').unpack('c*');w=4+v.length").split.join[0,609])#Y.E.
```

## License

The MIT License (MIT)

Copyright (c) 2023 Yusuke Endoh (@mametter)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
