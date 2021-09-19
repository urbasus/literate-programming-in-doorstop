# 1.0 Heading 1 {#hello006 }

## 2.1 hello002 {#hello002 }

The program shall print "Hello world!":

```
$ hello.exe
Hello World!
```

## 3.1 hello003 {#hello003 }

C program structure is that of the C template:

```
<<hello.c>>=
<<template-source-c>>
@
```

## 3.2 hello007 {#hello007 }

C source template structure:

```
<<template-source-c>>=
<<license-c>>

/* Headers */
<<headers>>

/* Macros */
<<macros>>

/* Declarations */
<<declarations>>

/* Definitions */
<<definitions>>
@
```

Several template fields may be empty.

```
<<headers>>=
<<macros>>=
<<declarations>>=
@
```

## 4.1 hello005 {#hello005 }

Printing "Hello World!" is made directly in the main function:

```
<<definitions>>=

int main(int argc, char** argv)
{
    puts("Hello world!");
    return 0;
}
@
```

## 4.2 hello008 {#hello008 }

Using functions from the C Standard Library stdio.h header:

```
<<headers>>=
#include <stdio.h>
@
```

In case this requirement is not linked to any implementation, deactivate it to have it removed from generated documentation and code. Code tooling does this better, but it showcases how code orphaned from its requirements can be detected.

## 4.3 hello009 {#hello009 }

Program is under MIT license, because reasons.

```
<<license-c>>=
/*
<<MIT-license>>
*/
@
```

```
<<MIT-license>>=
<<copyright>>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
@
```

## 4.4 hello010 {#hello010 }

Copyright belongs to Andreas Urban.

```
<<copyright>>=
Copyright 2021 Andreas Urban
@
```

