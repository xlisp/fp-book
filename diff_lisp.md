## From : http://hyperpolyglot.org/lisp  

#### Version Used
```common-lisp
;; common-lisp
SBCL 1.2
```
```racket
;; racket
Racket 6.1
```
```clojure
;; clojure
Clojure 1.6
```
```emacs-lisp
;; emacs-lisp
Emacs 24.5
```


#### Show Version
```common-lisp
;; common-lisp
$ sbcl --version
```
```racket
;; racket
$ racket --version
```
```clojure
;; clojure
displayed by repl on startup
```
```emacs-lisp
;; emacs-lisp
$ emacs --version
```


#### Compiler
```common-lisp
;; common-lisp

```
```racket
;; racket
$ raco make module.rkt
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
M-x byte-compile-file
```


#### Standalone Executable
```common-lisp
;; common-lisp
(sb-ext:save-lisp-and-die  "executable"  :executable t  :toplevel 'function)
```
```racket
;; racket
$ mzc —exe executable file
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Interpreter
```common-lisp
;; common-lisp
$ sbcl --script foo.lisp
```
```racket
;; racket
$ racket -r foo.racket
```
```clojure
;; clojure
specify full path to clojure jar:
java -cp clojure.jar clojure.main foo.clj
```
```emacs-lisp
;; emacs-lisp

```


#### Shebang
```common-lisp
;; common-lisp
#!/usr/bin/env sbcl --script
```
```racket
;; racket
#!/usr/bin/env racket --script
```
```clojure
;; clojure
specify full path to clojure jar:
#!/usr/bin/env java -jar clojure.jar
```
```emacs-lisp
;; emacs-lisp
#!/usr/bin/env emacs --script
```


#### Repl
```common-lisp
;; common-lisp
$ sbcl
```
```racket
;; racket
$ racket
```
```clojure
;; clojure
$ java -jar /PATH/TO/clojure.jar
```
```emacs-lisp
;; emacs-lisp
M-x ielm
```


#### Command Line Program
```common-lisp
;; common-lisp

```
```racket
;; racket
$ racket -e '(+ 1 1)'
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Word Separator
```common-lisp
;; common-lisp
whitespace
```
```racket
;; racket
whitespace
```
```clojure
;; clojure
whitespace and commas
```
```emacs-lisp
;; emacs-lisp
whitespace
```


#### End Of Line Comment
```common-lisp
;; common-lisp
(+ 1 1) ; adding
```
```racket
;; racket
(+ 1 1) ; adding
```
```clojure
;; clojure
(+ 1 1) ; adding
```
```emacs-lisp
;; emacs-lisp
(+ 1 1) ; adding
```


#### Multiple Line Comment
```common-lisp
;; common-lisp
(+ 1 #| adding |# 1)
```
```racket
;; racket
(+ 1 #| adding |# 1)
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Identifier
```common-lisp
;; common-lisp
case insensitive, cannot start with digitexcluded characters:
SP ( ) " , ' ` : ; # | \reserved for user macros:
? ! [ ] { }
```
```racket
;; racket
case sensitive, cannot start with digitexcluded characters:
SP ( ) [ ] { } " , ' ` ; # | \
```
```clojure
;; clojure
case sensitive, cannot start with digitpermitted characters:
A-Z a-z 0-9 * + ! - _ ?these have special meaning or are reserved:
/ . :
```
```emacs-lisp
;; emacs-lisp
case sensitive, cannot start with digitexcluded characters:
SP ( ) " , ' ` ; # | \ _ [ ]
```


#### Quoted Identifierand Escaped Identifier
```common-lisp
;; common-lisp
(setq |white space symbol| 3)
(setq white\ space\ symbol 3)
```
```racket
;; racket
(define |white space symbol| 3)
(define white\ space\ symbol 3)
```
```clojure
;; clojure
nonenone
```
```emacs-lisp
;; emacs-lisp
none
(setq white\ space\ symbol 3)
```


#### Local Variable
```common-lisp
;; common-lisp
; parallel assignment:
(let ((x 3) (y 4))  (+ x y)); sequential assignment:
(let* ((x 3) (y (* x x)))  (+ x y))
```
```racket
;; racket
; parallel assignment:
(let ((x 3) (y 4))  (+ x y)); sequential assignment:
(let* ((x 3) (y (* x x)))  (+ x y))
```
```clojure
;; clojure
(let [x 3 y 4]  (+ x y))
(let [[x y] [3 4]]  (+ x y))
(let [x 3 y (* x x)]  (+ x y))
```
```emacs-lisp
;; emacs-lisp
; parallel assignment:
(lexical-let ((x 3) (y 4))  (+ x y))
(lexical-let* ((x 3) (y (* x x)))  (+ x y))
```


#### Global Variable
```common-lisp
;; common-lisp
(defparameter *x* 3); doesn't change x if already set:
(defvar *x* 3)
```
```racket
;; racket
(define x 3); y is not global:
(define (double z)  (define y 2)  (* y z))
```
```clojure
;; clojure
(def x 3)
```
```emacs-lisp
;; emacs-lisp
(set 'x 3)
(setq x 3)
```


#### Remove Variable
```common-lisp
;; common-lisp
(makunbound 'x)
```
```racket
;; racket
(namespace-undefine-variable! 'x)
```
```clojure
;; clojure
(ns-unmap *ns* 'x)
```
```emacs-lisp
;; emacs-lisp
(makunbound 'x)
```


#### Null
```common-lisp
;; common-lisp
nil '()
```
```racket
;; racket
null '()
```
```clojure
;; clojure
; same value as null in Java:
nil
```
```emacs-lisp
;; emacs-lisp
nil '()
```


#### Null Test
```common-lisp
;; common-lisp
(null x)
```
```racket
;; racket
(null? x)
```
```clojure
;; clojure
(nil? x)
```
```emacs-lisp
;; emacs-lisp
(null x)
```


#### Identifier As Value
```common-lisp
;; common-lisp
'x
(quote x)
```
```racket
;; racket
'x
(quote x)
```
```clojure
;; clojure
'x
(quote x)
```
```emacs-lisp
;; emacs-lisp
'x
(quote x)
```


#### Identifier Test
```common-lisp
;; common-lisp
(symbolp 'x)
```
```racket
;; racket
(symbol? 'x)
```
```clojure
;; clojure
(symbol? 'x)
```
```emacs-lisp
;; emacs-lisp
(symbolp 'x)
```


#### Identifier Equality Test
```common-lisp
;; common-lisp
(eq 'x 'x)
```
```racket
;; racket
(eq? 'x 'x)
```
```clojure
;; clojure
(= 'x 'x)
```
```emacs-lisp
;; emacs-lisp
(eq 'x 'x)
```


#### Non Referential Identifier
```common-lisp
;; common-lisp
:foo
```
```racket
;; racket
#:foo
```
```clojure
;; clojure
:foo
```
```emacs-lisp
;; emacs-lisp
:foo
```


#### Identifier Attributesset Get Remove
```common-lisp
;; common-lisp
(set 'x 13)
(setf (get 'x :desc) "unlucky")
(get 'x :desc)
(remprop 'x :desc)
```
```racket
;; racket
none
```
```clojure
;; clojure
; value must be instance of clojure.lang.IObj:
(def x (with-meta [13] {:desc "unlucky"}))
(get (meta x) :desc); none
```
```emacs-lisp
;; emacs-lisp
(set 'x 13)
(setf (get 'x :desc) "unlucky")
(get 'x :desc)
(remprop 'x :desc)
```


#### True And False
```common-lisp
;; common-lisp
t nil
```
```racket
;; racket
#t #f
true false
```
```clojure
;; clojure
true false
```
```emacs-lisp
;; emacs-lisp
t nil
```


#### Falsehoods
```common-lisp
;; common-lisp
nil ()
```
```racket
;; racket
#f false
```
```clojure
;; clojure
false nil
```
```emacs-lisp
;; emacs-lisp
nil ()
```


#### Logical Operators
```common-lisp
;; common-lisp
(or (not t) (and t nil))
```
```racket
;; racket
(or (not #t) (and #t #f))
```
```clojure
;; clojure
(or (not true) (and true false))
```
```emacs-lisp
;; emacs-lisp
(or (not t) (and t nil))
```


#### Relational Operators
```common-lisp
;; common-lisp
= /= < > <= >=
```
```racket
;; racket
= none < > <= >=
```
```clojure
;; clojure
= not= < > <= >=
```
```emacs-lisp
;; emacs-lisp
= /= < > <= >=
```


#### Min And Max
```common-lisp
;; common-lisp
(min 1 2 3)
(max 1 2 3)
```
```racket
;; racket
(min 1 2 3)
(max 1 2 3)
```
```clojure
;; clojure
(min 1 2 3)
(max 1 2 3)
```
```emacs-lisp
;; emacs-lisp
(min 1 2 3)
(max 1 2 3)
```


#### Numeric Predicates
```common-lisp
;; common-lisp
numberp integerp
rationalp floatp
realp complexp
```
```racket
;; racket
number? integer?
rational? inexact?
real? complex?
```
```clojure
;; clojure
number? integer?
rational? float?none none
```
```emacs-lisp
;; emacs-lisp
numberp integerpnone floatpnone none
```


#### Arithmetic Operators
```common-lisp
;; common-lisp
+ - * / mod
```
```racket
;; racket
+ - * / modulo
```
```clojure
;; clojure
+ - * / mod
```
```emacs-lisp
;; emacs-lisp
+ - * / %
```


#### Integer Divisionand Remainder
```common-lisp
;; common-lisp
(truncate 7 3)
(rem 7 3)
```
```racket
;; racket
(quotient 7 3)
(remainder 7 3)
```
```clojure
;; clojure
(quot 7 3)
(rem 7 3)
```
```emacs-lisp
;; emacs-lisp
(/ 7 3)
(% 7 3)
```


#### Integer Division By Zero
```common-lisp
;; common-lisp
division-by-zero error
```
```racket
;; racket
division by zero error
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
arith-error
```


#### Float Division
```common-lisp
;; common-lisp
rational:
(/ 7 3)float:
(/ 7 (* 3 1.0))
```
```racket
;; racket
rational:
(/ 7 3)float:
(/ 7 (float 3))
```
```clojure
;; clojure
rational:
(/ 7 3)float:
(/ 7 (* 3 1.0))
```
```emacs-lisp
;; emacs-lisp
integer quotient:
(/ 7 3)float:
(/ 7 (* 3 1.0))
```


#### Float Division By Zero
```common-lisp
;; common-lisp
division-by-zero error
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
-1.0e+INF, -0.0e+NaN, or 1.0e+INF
```


#### Power
```common-lisp
;; common-lisp
(expt 2 32)
```
```racket
;; racket
(expt 2 32)
```
```clojure
;; clojure
returns float:
(Math/pow 2 32)
```
```emacs-lisp
;; emacs-lisp
(expt 2 32)
```


#### Sqrt
```common-lisp
;; common-lisp
(sqrt 2)
```
```racket
;; racket
(sqrt 2)
```
```clojure
;; clojure
(Math/sqrt 2)
```
```emacs-lisp
;; emacs-lisp
(sqrt 2)
```


#### Sqrt  1
```common-lisp
;; common-lisp
#c(0.0 1.0)
```
```racket
;; racket
0+1i
```
```clojure
;; clojure
(Math/sqrt -1): NaN
```
```emacs-lisp
;; emacs-lisp
-0.0e+NaN
```


#### Transcendental Functions
```common-lisp
;; common-lisp
exp log sin cos tan asin acos atan atan
```
```racket
;; racket
exp log sin cos tan asin acos atan atan
```
```clojure
;; clojure
Math/exp Math/log Math/sin Math/cos Math/tan Math/asin Math/acos Math/atan Math/atan2
```
```emacs-lisp
;; emacs-lisp
exp log sin cos tan asin acos atan atan
```


#### Float Truncation
```common-lisp
;; common-lisp
return two values, first is integer:
truncate round ceiling floor
```
```racket
;; racket
return floats:
truncate round ceiling floor
```
```clojure
;; clojure
return integers:
int Math/roundreturn floats:
Math/ceil Math/floor
```
```emacs-lisp
;; emacs-lisp
truncate round ceiling floor
fround fceiling ffloortruncate returns integer
```


#### Absolute Valueand Signum
```common-lisp
;; common-lisp
abs signum
```
```racket
;; racket
absracket: sgn
```
```clojure
;; clojure
Math/abs Math/signum
```
```emacs-lisp
;; emacs-lisp
abs signum
```


#### Integer Overflow
```common-lisp
;; common-lisp
none; arbitrary-precision integers
```
```racket
;; racket
none; arbitrary-precision integers
```
```clojure
;; clojure
clojure.lang.Numbers.throwIntOverflow exception
```
```emacs-lisp
;; emacs-lisp

```


#### Float Overflow
```common-lisp
;; common-lisp
floating-point-overflow error
```
```racket
;; racket

```
```clojure
;; clojure
not literals:
-Infity NaN Infinity
```
```emacs-lisp
;; emacs-lisp

```


#### Rational Construction
```common-lisp
;; common-lisp
(/ 3 7); literal:
3/7
```
```racket
;; racket
(/ 3 7); literal:
3/7; also rational:
2.718
(exp 1)
```
```clojure
;; clojure
(/ 3 7); literal:
3/7
```
```emacs-lisp
;; emacs-lisp

```


#### Rational Decomposition
```common-lisp
;; common-lisp
(numerator 3/7)
(denominator 3/7)
```
```racket
;; racket
(numerator 3/7)
(denominator 3/7)
```
```clojure
;; clojure
(numerator 3/7)
(denominator 3/7)
```
```emacs-lisp
;; emacs-lisp
none none
```


#### Complex Construction
```common-lisp
;; common-lisp
#c(1 2)
```
```racket
;; racket
1+2i
(+ 1 +2i)
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
none
```


#### Complex Decomposition
```common-lisp
;; common-lisp
(realpart #c(1 2))
(imagpart #c(1 2))
(phase #c(1 2))
(abs #c(1 2))
(conjugate #c(1 2))
```
```racket
;; racket
(real-part 1+2i)
(imag-part 1+2i)
(angle 1+2i)
(magnitude 1+2i)
(conjugate 1+2i)
```
```clojure
;; clojure
nonenone
```
```emacs-lisp
;; emacs-lisp
none none
```


#### Random Numberuniform Integer Uniform Float Normal Float
```common-lisp
;; common-lisp
(random 100)
(random 1.0)none
```
```racket
;; racket
(random 100)
(random)none
```
```clojure
;; clojure
(def rnd (java.util.Random.))
(.nextInt rnd 100)
(.nextFloat rnd)
(.nextGaussian rnd)
```
```emacs-lisp
;; emacs-lisp
(random 100)nonenone
```


#### Random Seed
```common-lisp
;; common-lisp
(setq *random-state*  (sb-ext:seed-random-state 17))
```
```racket
;; racket
(random-seed 17)
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Bit Operators
```common-lisp
;; common-lisp
ash left shift when 2nd argument positive logand logior logxor lognot
```
```racket
;; racket
arithmetic-shift left shift when 2nd argument positive bitwise-and bitwise-ior bitwise-xor bitwise-not
```
```clojure
;; clojure
bit-shift-left bit-shift-right bit-and bit-or bit-xor bit-not
```
```emacs-lisp
;; emacs-lisp
lsh left shift when 2nd argument positive logand logior logxor lognot
```


#### Binary Octal And Hex Literals
```common-lisp
;; common-lisp
#b101010
#o52
#x2a
```
```racket
;; racket
#b101010
#o52
#x2a
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Radix
```common-lisp
;; common-lisp
(format nil "~7r" 42)
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### String Test
```common-lisp
;; common-lisp
(stringp "foo")
```
```racket
;; racket
(string? "foo")
```
```clojure
;; clojure
(string? "foo")
```
```emacs-lisp
;; emacs-lisp
(stringp "foo")
```


#### String Literal
```common-lisp
;; common-lisp
"foo bar"
```
```racket
;; racket
"foo bar"
```
```clojure
;; clojure
"foo bar"
```
```emacs-lisp
;; emacs-lisp
"foo bar"
```


#### Newline In Literal
```common-lisp
;; common-lisp
yes
```
```racket
;; racket
yes
```
```clojure
;; clojure
yes
```
```emacs-lisp
;; emacs-lisp
yes
```


#### Literal Escapes
```common-lisp
;; common-lisp
\" \\
```
```racket
;; racket
\t \n \r \" \\ \ooo \uhhhh
```
```clojure
;; clojure
\b \t \n \f \r \" \\ \ooo \uhhhh
```
```emacs-lisp
;; emacs-lisp
\b \t \n \f \r \" \\ \ooo \uhhhh \xh - \xhhhhhh \C-x \M-x
```


#### Constructor
```common-lisp
;; common-lisp

```
```racket
;; racket
(string #\f #\o #\o)
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(string ?f ?o ?o)
```


#### Format String
```common-lisp
;; common-lisp
(format nil "~a: ~a ~,2f" "Foo" 7 13.457)
```
```racket
;; racket
(format "~a ~a ~a" "Foo" 7 13.457)
```
```clojure
;; clojure
(String/format "%s: %d %.2f"  (to-array ["Foo" 7 13.457]))
```
```emacs-lisp
;; emacs-lisp
(format "%s: %d %.2f" "Foo" 7 13.457)
```


#### Format Specifiers
```common-lisp
;; common-lisp
~a    any type, human readable
~s    any time, read parseable
~%    newline
~~    tilde
~c    character
~,5f  5 digits right of decimal mark
~d    decimal
~x    hex
~o    octal
~b    binary
```
```racket
;; racket
~a    any type, human readable
~s    any time, read parseable
~%    newline
~~    tilde
~c    character
~d    decimal
~x    hex
~o    octal
~b    binary
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Compare Strings
```common-lisp
;; common-lisp
(string= "foo" "bar")
(string< "foo" "bar")
```
```racket
;; racket
(string=? "foo" "bar")
(string<? "foo" "bar")
```
```clojure
;; clojure
(.equals "foo" "bar")
(.compareTo "foo" "bar")
```
```emacs-lisp
;; emacs-lisp
(string= "foo" "bar")
(string< "foo" "bar")
```


#### Concatenate
```common-lisp
;; common-lisp
(concatenate 'string "foo " "bar " "bar")
```
```racket
;; racket
(string-append "foo " "bar " "baz")
```
```clojure
;; clojure
(str "foo " "bar " "baz")
```
```emacs-lisp
;; emacs-lisp
(concat "foo " "bar " "baz")
```


#### Replicate
```common-lisp
;; common-lisp
make-string 3 :initial-element #\f)
```
```racket
;; racket
(make-string 3 #\f)
```
```clojure
;; clojure
(String. (into-array  (. Character TYPE)  (repeat 3 \f)))
```
```emacs-lisp
;; emacs-lisp
(make-string 3 ?f)
```


#### Translate Case
```common-lisp
;; common-lisp
(string-downcase "FOO")
(string-upcase "foo")
```
```racket
;; racket
(string-downcase "FOO")
(string-upcase "foo")
```
```clojure
;; clojure
(.toLowerCase "FOO")
```
```emacs-lisp
;; emacs-lisp
(downcase "FOO")
(upcase "foo")
```


#### Capitalize
```common-lisp
;; common-lisp
; "Foo Bar":
(string-capitalize "foo bar")
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
; "Foo Bar":
(capitalize "foo")
```


#### Trim
```common-lisp
;; common-lisp
(string-trim  '(#\space #\tab #\newline)  " foo ")
```
```racket
;; racket
(require srfi/13/string)
(string-trim-both " foo ")
```
```clojure
;; clojure
(.trim " foo ")
```
```emacs-lisp
;; emacs-lisp
none; see notes for an implementation
```


#### Padon Right On Left
```common-lisp
;; common-lisp
(format nil "~10a" "foo")
(format nil "~10@a" "foo")
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Number To String
```common-lisp
;; common-lisp
(concatenate 'string  "value: "  (princ-to-string 8))
```
```racket
;; racket
(string-append  "value: "  (number->string 8))
```
```clojure
;; clojure
(str "Value: " 8)
```
```emacs-lisp
;; emacs-lisp
(concat  "value: "  (number-to-string 8))
```


#### String To Number
```common-lisp
;; common-lisp
(+ 7 (parse-integer "12"))
(+ 73.9 (read-from-string ".037"))
```
```racket
;; racket
(+ 7 (string->number "12"))
(+ 73.9 (string->number ".037"))
```
```clojure
;; clojure
(+ 7 (Integer/parseInt "12"))
(+ 73.9 (Float/parseFloat ".037"))
```
```emacs-lisp
;; emacs-lisp
(+ 7 (string-to-number "12"))
(+ 73.9 (string-to-number ".037"))
```


#### Split
```common-lisp
;; common-lisp
(cl-ppcre:split  "[ \t\n]+"  "foo bar baz")
```
```racket
;; racket
(regexp-split #rx"[ \n\t]+"  "foo bar baz")
```
```clojure
;; clojure
(seq  (.split "foo bar baz"    "[ \t\n]+"))
```
```emacs-lisp
;; emacs-lisp
(split-string "foo bar baz")
```


#### String Join
```common-lisp
;; common-lisp
(reduce  (lambda (m o)    (concatenate 'string m " " o))  '("foo" "bar" "baz"))
```
```racket
;; racket
(string-join  '("foo" "bar" "baz")  " ")
```
```clojure
;; clojure
(reduce #(str %1 " " %2)  '("foo" "bar" "baz"))
```
```emacs-lisp
;; emacs-lisp
(reduce  (lambda (m o) (concat m " " o))  '("foo" "bar" "baz"))
```


#### Length
```common-lisp
;; common-lisp
(length "foo")
```
```racket
;; racket
(string-length "foo")
```
```clojure
;; clojure
(.length "foo")
```
```emacs-lisp
;; emacs-lisp
(length "foo")
```


#### Index Of Substring
```common-lisp
;; common-lisp
(search "bar" "foo bar")
```
```racket
;; racket
racket:
(require srfi/13/string)
(string-contains "foo bar" "bar")
```
```clojure
;; clojure
(.indexOf "foo bar" "bar")
```
```emacs-lisp
;; emacs-lisp
(search "bar" "foo bar")
```


#### Extract Substring
```common-lisp
;; common-lisp
(subseq "foo bar" 4 7)
```
```racket
;; racket
(substring "foo bar" 4 7)
```
```clojure
;; clojure
(.substring "foo bar" 4 7)
```
```emacs-lisp
;; emacs-lisp
(substring "foo bar" 4 7)
```


#### Character Literal
```common-lisp
;; common-lisp
#\a #\space #\newline #\backspace #\tab #\linefeed #\page #\return #\rubout
```
```racket
;; racket
#\a #\space #\newline #\backspace #\tab #\linefeed #\page #\return #\nul #\vtab #\alarm #\esc #\deletenot in racket: #\alarm #\esc #\delete
```
```clojure
;; clojure
\a \newline \space \backspace \tab ? \formfeed \return ?
```
```emacs-lisp
;; emacs-lisp
?a ?\b ?\t ?\n ?\f ?\r ?\" ?\\ ?\ooo ?\uhhhh ?\xh - ?\xhhhhhh ?\C-x ?\M-x
```


#### Test Characters
```common-lisp
;; common-lisp
(characterp #\x)
(alpha-char-p #\x)
(alphanumericp #\x)
(digit-char-p #\7)
(lower-case-p #\x)
(upper-case-p #\X)
```
```racket
;; racket
(char? #\x)
```
```clojure
;; clojure
(char? \x)
```
```emacs-lisp
;; emacs-lisp
(characterp ?x)
```


#### Chr And Ord
```common-lisp
;; common-lisp
(code-char 97)
(char-code #\a)
```
```racket
;; racket
(integer->char 97)
(char->integer #\a)
```
```clojure
;; clojure
(char 97)
(int \a)
```
```emacs-lisp
;; emacs-lisp

```


#### To Array Of Characters
```common-lisp
;; common-lisp

```
```racket
;; racket
; list:
(string->list "foo")
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Character Lookup
```common-lisp
;; common-lisp
(char "foo" 0)
```
```racket
;; racket
(string-ref "foo" 0)
```
```clojure
;; clojure
(.charAt "foo" 0)
```
```emacs-lisp
;; emacs-lisp
(aref "foo" 0)
```


#### Literal
```common-lisp
;; common-lisp
use a string:
"\\b\\d{5}\\b"
```
```racket
;; racket
posix extended:
#rx"^[0-9][0-9][0-9][0-9][0-9]$"
(regexp "^[0-9][0-9][0-9][0-9][0-9]$")perl style:
#px"\\b\\d{5}\\b"
(pregexp "\\b\\d{5}\\b")
```
```clojure
;; clojure
#"\b\d{5}\b"
```
```emacs-lisp
;; emacs-lisp

```


#### Character Class Abbrevations
```common-lisp
;; common-lisp
. \d \D \s \S \w \W
```
```racket
;; racket
regexp:
.pregexp:
. \d \D \s \S \w \W
```
```clojure
;; clojure
. \d \D \s \S \w \W
```
```emacs-lisp
;; emacs-lisp
. \w \W \ca \cl \cg \Ca \Cl \Cg \sx\ca \cl and \cg match ASCII, Latin, and Greek characters.Character classes of the form \sx depend on the current syntax table.
```


#### Anchors
```common-lisp
;; common-lisp
^ $ \b \B
```
```racket
;; racket
regexp:
^ $pregexp:
^ $ \b \B
```
```clojure
;; clojure
^ $ \A \b \B \G \z \Z
```
```emacs-lisp
;; emacs-lisp
^ $ \b \B
```


#### Match Test
```common-lisp
;; common-lisp
(ql:quickload "cl-ppcre")
(if (cl-ppcre:all-matches "1999" s)  (format t "party!"))
```
```racket
;; racket
(regexp-match #rx"bar" "foo bar")
```
```clojure
;; clojure
(re-find #"bar" "foo bar")
```
```emacs-lisp
;; emacs-lisp
(string-match "bar" "foo bar")
```


#### Case Insensitive Match Test
```common-lisp
;; common-lisp

```
```racket
;; racket
(regexp-match #px"(?i:lorem)" "Lorem")
```
```clojure
;; clojure
(re-find #"(?i:lorem)" "Lorem")
```
```emacs-lisp
;; emacs-lisp

```


#### Substitution
```common-lisp
;; common-lisp
(cl-ppcre:regex-replace "[^l]l"  "hello"  "EL")
(cl-ppcre:regex-replace-all "[^l]l"  "hello hello"  "EL")
```
```racket
;; racket
(regexp-replace #rx"el"  "hello"  "EL")
(regexp-replace* #rx"el"  "hello hello"  "EL")
```
```clojure
;; clojure
(.replaceFirst "hello" "[^l]l" "XX")
(.replaceAll "hello hello"  "[^l]l" "XX")
```
```emacs-lisp
;; emacs-lisp
?
(replace-regexp-in-string "[^l]l"  "EL"  "hello hello")
```


#### Group Capture
```common-lisp
;; common-lisp

```
```racket
;; racket
(match (regexp-match    #px"(\\d{4})-(\\d{2})-(\\d{2})"    "2010-06-03")  [(list s yr mn dy) (list yr mn dy)])
```
```clojure
;; clojure
(let [[_ yr mn dy]    (re-find #"(\d{4})-(\d{2})-(\d{2})"      "2010-06-03")]  yr)
```
```emacs-lisp
;; emacs-lisp

```


#### Scan
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(re-seq #"\w+" "dolor sit amet")
```
```emacs-lisp
;; emacs-lisp

```


#### Backreference In Match And Substitution
```common-lisp
;; common-lisp

```
```racket
;; racket
(regexp-match #px"(\\w+) \\1" "do do")
(regexp-replace #px"(\\w+) (\\w+)"  "do re"  "\\2 \\1")
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Broken Down Datetime Type
```common-lisp
;; common-lisp
No dedicated type; a list of 9 values is used:  second: 0-59  minute: 0-59  hour: 0-23  day of month: 1-31  month: 1-12  year: 4 digits  day of week: 0-6 for Mon-Sun  is daylight savings time: t or nil  timezone: negated UTC offset in hours
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Current Datetime
```common-lisp
;; common-lisp
(get-decoded-time)
```
```racket
;; racket
(require racket/date)
(current-date)
```
```clojure
;; clojure
(def dt (new java.util.Date))
```
```emacs-lisp
;; emacs-lisp
(current-time)
```


#### Current Unix Epoch
```common-lisp
;; common-lisp
gray|; seconds since Jan 1, 1900:##
(get-universal-time)
```
```racket
;; racket
(current-seconds)
```
```clojure
;; clojure
(/ (System/currentTimeMillis) 1000.0)
```
```emacs-lisp
;; emacs-lisp
(float-time)
```


#### Unix Epoch To Broken Down Datetime
```common-lisp
;; common-lisp
(decode-universal-time  (get-unversal-time))
```
```racket
;; racket
(seconds->date (current-seconds))
```
```clojure
;; clojure
(def dt (new java.util.Date    (System/currentTimeMillis)))
```
```emacs-lisp
;; emacs-lisp
(seconds-to-time (float-time))
```


#### Broken Down Datetime To Unix Epoch
```common-lisp
;; common-lisp
(encode-universal-time 0 22 10 31 5 2015)
```
```racket
;; racket
(require racket/date)
(date->seconds (current-date))
```
```clojure
;; clojure
(/ (.getTime (new java.util.Date)) 1000.0)
```
```emacs-lisp
;; emacs-lisp
(multiple-value-bind (b s)  (current-time)  (+ (* b (expt 2 16)) s))
```


#### Format Datetime
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(def s "yyyy-MM-dd HH:mm:ss")
(def fmt (new java.text.SimpleDateFormat s))
(.format fmt (new java.util.Date))
```
```emacs-lisp
;; emacs-lisp
(format-time-string  "%Y-%m-%d %H:%M:%S"  (current-time))
```


#### Parse Datetime
```common-lisp
;; common-lisp

```
```racket
;; racket
(require (prefix-in s19. srfi/19))
(define (date-str->unix-time s fmt)    (s19.time-second      (s19.date->time-utc        (s19.string->date s fmt))))
(date-str->unix-time  "2015-05-31 07:06:00"  "~Y-~m-~d ~H:~M:~S")
```
```clojure
;; clojure
(def s "yyyy-MM-dd HH:mm:ss")
(def fmt (new java.text.SimpleDateFormat s))
(.parse fmt "2015-05-30 09:14:14")
```
```emacs-lisp
;; emacs-lisp

```


#### Date Parts
```common-lisp
;; common-lisp
(multiple-value-bind  (ss mi hr dy mo yr)  (get-decoded-time)  (list ss mi hr) ; quiesce warning  (list dy mo yr))
```
```racket
;; racket
(date-year (current-date))
(date-month (current-date))
(date-day (current-date))
```
```clojure
;; clojure
(def cal (new java.util.GregorianCalendar))
(.setTime cal dt)
(.get cal java.util.Calendar/DAY_OF_MONTH)
(+ (.get cal java.util.Calendar/MONTH) 1)
(.get cal java.util.Calendar/YEAR)
```
```emacs-lisp
;; emacs-lisp
(multiple-value-bind  (ss mi hr dy mo yr)   (decode-time (current-time))  (list dy mo yr))
```


#### Time Parts
```common-lisp
;; common-lisp
(multiple-value-bind  (ss mi hr)  (get-decoded-time)  (list ss mi hr))
```
```racket
;; racket
(date-hour (current-date))
(date-minute (current-date))
(date-second (current-date))
```
```clojure
;; clojure
(def cal (new java.util.GregorianCalendar))
(.setTime cal dt)
(.get cal java.util.Calendar/HOUR_OF_DAY)
(.get cal java.util.Calendar/MINUTE)
(.get cal java.util.Calendar/SECOND)
```
```emacs-lisp
;; emacs-lisp
(multiple-value-bind  (ss mi hr dy mo yr)   (decode-time (current-time))  (list ss mi hr))
```


#### Build Broken Down Datetime
```common-lisp
;; common-lisp
(encode-universal-time 0 22 10 31 5 2015)
```
```racket
;; racket

```
```clojure
;; clojure
(let  [yr 2015 mo 5 dy 31 hr 10 mi 22 ss 0]  (def cal    (new java.util.GregorianCalendar      yr (- mo 1) dy hr mi ss)))
```
```emacs-lisp
;; emacs-lisp
(encode-time 0 50 8 31 5 2015)
```


#### Literal
```common-lisp
;; common-lisp
'(1 2 3)
(quote (1 2 3))
```
```racket
;; racket
'(1 2 3)
'[1 2 3]
'{1 2 3}
(quote (1 2 3))
```
```clojure
;; clojure
'(1 2 3)
(quote (1 2 3))
```
```emacs-lisp
;; emacs-lisp
'(1 2 3)
(quote (1 2 3))
```


#### Constructor
```common-lisp
;; common-lisp
(list 1 2 3)
```
```racket
;; racket
(list 1 2 3)
```
```clojure
;; clojure
(list 1 2 3)
```
```emacs-lisp
;; emacs-lisp
(list 1 2 3)
```


#### Predicate
```common-lisp
;; common-lisp
(listp '(1 2 3))
```
```racket
;; racket
(list? '(1 2 3))
```
```clojure
;; clojure
(list? '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(listp '(1 2 3))
```


#### Empty Test
```common-lisp
;; common-lisp
nil and '() are synonyms and evaluate as false in a boolean context. All other values are true.
```
```racket
;; racket
(empty? '())
```
```clojure
;; clojure
(empty? ())
```
```emacs-lisp
;; emacs-lisp
nil and '() are synonyms and evaluate as false in a boolean context. All other values are true.
```


#### Evaluating The Empty List
```common-lisp
;; common-lisp
nil
```
```racket
;; racket
error
```
```clojure
;; clojure
()
```
```emacs-lisp
;; emacs-lisp
nil
```


#### Cons
```common-lisp
;; common-lisp
(cons 1 '(2 3))
```
```racket
;; racket
(cons 1 '(2 3))
```
```clojure
;; clojure
(cons 1 '(2 3))
```
```emacs-lisp
;; emacs-lisp
(cons 1 '(2 3))
```


#### Head
```common-lisp
;; common-lisp
(car '(1 2 3))
(first '(1 2 3))
```
```racket
;; racket
(car '(1 2 3))
(first '(1 2 3))
```
```clojure
;; clojure
first
```
```emacs-lisp
;; emacs-lisp
car
```


#### Tail
```common-lisp
;; common-lisp
(cdr '(1 2 3))
(rest '(1 2 3))
```
```racket
;; racket
(cdr '(1 2 3))
(rest '(1 2 3))
```
```clojure
;; clojure
(rest '(1 2 3))
(next '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(cdr '(1 2 3))
(rest '(1 2 3))
```


#### Head And Tail Of Empty List
```common-lisp
;; common-lisp
both evaluate to nil
```
```racket
;; racket
error
```
```clojure
;; clojure
()
```
```emacs-lisp
;; emacs-lisp
both evaluate to nil
```


#### Length
```common-lisp
;; common-lisp
(length '(1 2 3))
```
```racket
;; racket
(length '(1 2 3))
```
```clojure
;; clojure
(count '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(length '(1 2 3))
```


#### Equality Test
```common-lisp
;; common-lisp
(equal '(1 2 3) '(1 2 3))
```
```racket
;; racket
(equal? '(1 2 3) '(1 2 3))
```
```clojure
;; clojure
(= '(1 2 3) '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(equal '(1 2 3) '(1 2 3))
```


#### Nth Element
```common-lisp
;; common-lisp
; indexed from zero:
(nth 2 '(1 2 3 4))
```
```racket
;; racket
(list-ref '(1 2 3 4) 2)
```
```clojure
;; clojure
(nth '(1 2 3 4) 2)
```
```emacs-lisp
;; emacs-lisp
(nth 2 '(1 2 3 4))
```


#### Out Of Bounds Behavior
```common-lisp
;; common-lisp
nil
```
```racket
;; racket
error
```
```clojure
;; clojure
raises IndexOutOfBoundsException
```
```emacs-lisp
;; emacs-lisp
nil
```


#### Element Index
```common-lisp
;; common-lisp
(position 7 '(5 6 7 8))
```
```racket
;; racket
(require srfi/1)
(list-index (lambda (x) (= x 7)) '(5 6 7 8))
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(position 7 '(5 6 7 8))
```


#### Concatenate
```common-lisp
;; common-lisp
(append '(1 2 3) '(4 5 6))
```
```racket
;; racket
(append '(1 2 3) '(4 5 6))
```
```clojure
;; clojure
(concat '(1 2 3) '(4 5 6))
```
```emacs-lisp
;; emacs-lisp
(append '(1 2 3) '(4 5 6))
```


#### Take
```common-lisp
;; common-lisp
none
```
```racket
;; racket
(take '(1 2 3 4) 2)
```
```clojure
;; clojure
(take 2 '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp
none
```


#### Drop
```common-lisp
;; common-lisp
(nthcdr 2 '(1 2 3 4))
```
```racket
;; racket
(drop '(1 2 3 4) 2)
```
```clojure
;; clojure
(drop 2 '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp
(nthcdr 2 '(1 2 3 4))
```


#### Last Element
```common-lisp
;; common-lisp
(car (last '(1 2 3)))
```
```racket
;; racket
(last '(1 2 3))
```
```clojure
;; clojure
(last '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(car (last '(1 2 3)))
```


#### All But Last Element
```common-lisp
;; common-lisp
(butlast '(1 2 3))
```
```racket
;; racket
(define a '(1 2 3))
(take a (- (length a) 1))
```
```clojure
;; clojure
(butlast '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(butlast '(1 2 3))
```


#### Reverse
```common-lisp
;; common-lisp
(reverse '(1 2 3))
```
```racket
;; racket
(reverse '(1 2 3))
```
```clojure
;; clojure
(reverse '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(reverse '(1 2 3))
```


#### Sort
```common-lisp
;; common-lisp
(sort '(3 2 4 1) '<)
```
```racket
;; racket
(sort '(3 2 4 1) <)
```
```clojure
;; clojure
(sort < '(3 2 4 1))
```
```emacs-lisp
;; emacs-lisp
(sort '(3 2 4 1) '<)
```


#### Dedupe
```common-lisp
;; common-lisp
(remove-duplicates '(1 1 2 3))
```
```racket
;; racket
(remove-duplicates '(1 1 2 3))
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(remove-duplicates '(1 1 2 3))
```


#### Membership
```common-lisp
;; common-lisp
(member 7 '(1 2 3))
```
```racket
;; racket
(member 7 '(1 2 3))
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(member 7 '(1 2 3)
```


#### Map
```common-lisp
;; common-lisp
(mapcar  (lambda (x) (* x x))  '(1 2 3))
```
```racket
;; racket
(map (lambda (x) (* x x)) '(1 2 3))
```
```clojure
;; clojure
(map #(* % %) '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(mapcar  (lambda (x) (* x x))  '(1 2 3))
```


#### Filter
```common-lisp
;; common-lisp
(remove-if-not  (lambda (x) (> x 2))  '(1 2 3)); remove-if returns complement
```
```racket
;; racket
(filter  (lambda (x) (> x 2))  '(1 2 3)); filter-not returns complement
```
```clojure
;; clojure
(filter #(> % 2) '(1 2 3)); remove returns complement
```
```emacs-lisp
;; emacs-lisp
(remove-if-not  (lambda (x) (> x 2))  '(1 2 3)); remove-if returns complement
```


#### Reduce
```common-lisp
;; common-lisp
(reduce '-  '(1 2 3 4)  :initial-value 0)
```
```racket
;; racket
(foldl (lambda (x y) (- y x)) 0 '(1 2 3 4))
```
```clojure
;; clojure
(reduce - 0 '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp
(reduce '-  '(1 2 3 4)  :initial-value 0)
```


#### Right Fold
```common-lisp
;; common-lisp
(reduce '-  '(1 2 3 4)  :initial-value 0  :from-end t)
```
```racket
;; racket
(foldr - 0 '(1 2 3 4))
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(reduce '-  '(1 2 3 4)  :initial-value 0  :from-end t)
```


#### Iterate
```common-lisp
;; common-lisp
(dolist (x '(1 2 3))  (print x)  (print (- x)))
```
```racket
;; racket
(for ((x '(1 2 3)))  (printf "~a~n" x)  (printf "~a~n" (- x)))
```
```clojure
;; clojure
(doseq [x '(1 2 3)]  (println x)  (println (- x)))
```
```emacs-lisp
;; emacs-lisp
(dolist (x '(1 2 3))  (print x)  (print (- x)))
```


#### Universal Predicate
```common-lisp
;; common-lisp
(every  (lambda (i) (= 0 (rem i 2)))  '(1 2 3 4))
```
```racket
;; racket
(for/and ((i '(1 2 3 4)))  (= 0 (remainder i 2)))
```
```clojure
;; clojure
(every? #(= 0 (rem % 2)) '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp
(every  (lambda (i) (= 0 (% i 2)))  '(1 2 3 4))
```


#### Existential Predicate
```common-lisp
;; common-lisp
(some  (lambda (i) (= 0 (rem i 2)))  '(1 2 3 4))
```
```racket
;; racket
(for/or ((i '(1 2 3 4)))  (= 0 (remainder i 2)))
```
```clojure
;; clojure
(some #(= 0 (rem % 2)) '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp
(some  (lambda (i) (= 0 (% i 2)))  '(1 2 3 4))
```


#### List Comprehension
```common-lisp
;; common-lisp

```
```racket
;; racket
(for*/list  ((file "ABCDEFGH") (rank (in-range 1 9)))  (format "~a~a" file rank))
```
```clojure
;; clojure
(for  [file "ABCDEFGH" rank (range 1 9)]  (format "%c%d" file rank))
```
```emacs-lisp
;; emacs-lisp

```


#### Shuffle
```common-lisp
;; common-lisp

```
```racket
;; racket
(shuffle '(1 2 3 4))
```
```clojure
;; clojure
(shuffle '(1 2 3 4))
```
```emacs-lisp
;; emacs-lisp

```


#### Set Head
```common-lisp
;; common-lisp
(defparameter *a* '(1 2 3))
(setf (car *a*) 3)
```
```racket
;; racket
(require schema/mpair)
(define a (mlist 1 2 3))
(set-mcar! a 3)
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(setq a '(1 2 3)
(setcar a 3)
```


#### Set Tail
```common-lisp
;; common-lisp
(defparameter *a* '(1 2 3))
(setf (cdr *a*) '(4 5 6))
```
```racket
;; racket
(require schema/mpair)
(define a (mlist 1 2 3))
(set-mcdr! a (mlist 4 5 6))
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(setq a '(1 2 3)
(setcar a 3)
(setcdr a '(4 5 6))
```


#### Manipulate Back
```common-lisp
;; common-lisp
(defparameter *a* '(1 2 3))
(push 4 *a*)
(pop *a*)
```
```racket
;; racket
none
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(setq a '(1 2 3))
(push 4 a)
(pop a)
```


#### Flatten
```common-lisp
;; common-lisp

```
```racket
;; racket
(flatten '(1 2 (3 (4))))
```
```clojure
;; clojure
(flatten '(1 2 (3 (4))))
```
```emacs-lisp
;; emacs-lisp

```


#### Associative Array Lookup
```common-lisp
;; common-lisp
(assoc 3 '((1 2) (3 4)))
```
```racket
;; racket
(assoc 3 '((1 2) (3 4)))
```
```clojure
;; clojure
none, see note
```
```emacs-lisp
;; emacs-lisp
(assoc 3 '((1 2) (3 4)))
```


#### Flat Associative Array Lookup
```common-lisp
;; common-lisp
(getf '(1 2 3 4) 3)
```
```racket
;; racket
none
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(getf '(1 2 3 4) 3)
```


#### Pair Literal
```common-lisp
;; common-lisp
'(1 . 2)
```
```racket
;; racket
'(1 . 2)
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
'(1 . 2)
```


#### Cons Cell Test
```common-lisp
;; common-lisp
(cons '(1 . 2))
(not (atom '(1 . 2)))
```
```racket
;; racket
(cons? '(1 . 2))
(pair? '(1 . 2))
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(cons '(1 . 2))
(not (atom '(1 . 2)))
```


#### Translate Elements Recursively
```common-lisp
;; common-lisp
(sublis '((1 . 2) (3 . 4))  '(1 (3 3 (1))))
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(sublis '((1 . 2) (3 . 4))  '(1 (3 3 (1))))
```


#### Literal
```common-lisp
;; common-lisp
#(1 2 3)
```
```racket
;; racket
#(1 2 3)
```
```clojure
;; clojure
[1 2 3]
```
```emacs-lisp
;; emacs-lisp
[1 2 3]
```


#### Constructor
```common-lisp
;; common-lisp
(vector 1 2 3)
```
```racket
;; racket
(vector 1 2 3)
```
```clojure
;; clojure
(vector 1 2 3)
```
```emacs-lisp
;; emacs-lisp
(vector 1 2 3)
```


#### Size
```common-lisp
;; common-lisp
(length #(1 2 3))
```
```racket
;; racket
(vector-length #(1 2 3))
```
```clojure
;; clojure
(count [1 2 3])
```
```emacs-lisp
;; emacs-lisp
(length [1 2 3])
```


#### Lookup
```common-lisp
;; common-lisp
(elt #(1 2 3) 0) or
(aref #(1 2 3) 0)
```
```racket
;; racket
(vector-ref #(1 2 3) 0)
```
```clojure
;; clojure
(nth [1 2 3] 0)
```
```emacs-lisp
;; emacs-lisp
(elt [1 2 3] 0)
```


#### Update
```common-lisp
;; common-lisp
(setq v [1 2 3])
(setf (aref v 2) 4)
```
```racket
;; racket
(define v (vector 1 2 3))
(vector-set! v 2 4)
```
```clojure
;; clojure
(replace {2 4} [1 2 3])
```
```emacs-lisp
;; emacs-lisp
(setq v #(1 2 3))
(setf (aref v 2) 4)
```


#### Out Of Bounds Behavior
```common-lisp
;; common-lisp
raises sb-kernel:index-too-large-error
```
```racket
;; racket
error
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Array To List
```common-lisp
;; common-lisp
(coerce #(1 2 3) 'list)
```
```racket
;; racket
(vector->list #(1 2 3))
```
```clojure
;; clojure
(seq [1 2 3])
```
```emacs-lisp
;; emacs-lisp
(coerce [1 2 3] 'list)
```


#### List To Array
```common-lisp
;; common-lisp
(coerce '(1 2 3) 'vector)
```
```racket
;; racket
(list->vector '(1 2 3))
```
```clojure
;; clojure
(vec '(1 2 3))
```
```emacs-lisp
;; emacs-lisp
(coerce '(1 2 3) 'vector)
```


#### Reverse
```common-lisp
;; common-lisp
(reverse #(1 2 3))
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Sort
```common-lisp
;; common-lisp
(sort #(2 4 1 3) #'<)
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Map
```common-lisp
;; common-lisp
(map 'vector (lambda (x) (* x x)) #(1 2 3))
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Filter
```common-lisp
;; common-lisp
(remove-if-not (lambda (x) (> x 2)) #(1 2 3)); also remove-if
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Reduce
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Literal
```common-lisp
;; common-lisp
none
```
```racket
;; racket
; immutable:
#hash(("t" . 1) ("f" . 0))
```
```clojure
;; clojure
; clojure.lang.PersistentArrayMap:
{"t" 1 "f" 0}
```
```emacs-lisp
;; emacs-lisp
none
```


#### Constructor
```common-lisp
;; common-lisp
(defparameter *h* (make-hash-table :test 'equal)); default equality test is 'eql
```
```racket
;; racket
(define ih  (make-immutable-hash    '(("t" . 1) ("f" . 0)))); mutable:
(define h (make-hash '(("t" . 1) ("f" . 0))))
```
```clojure
;; clojure
; immutable:
(def ih (hash-map "t" 1 "f" 0))
```
```emacs-lisp
;; emacs-lisp
(setq h (make-hash-table :test 'equal))
```


#### Predicate
```common-lisp
;; common-lisp
(hash-table-p *h*)
```
```racket
;; racket
(hash? h); also true of assoc. lists and vectors:
(dict? h)
```
```clojure
;; clojure
(map? ih)
```
```emacs-lisp
;; emacs-lisp
(hash-table-p h)
```


#### Size
```common-lisp
;; common-lisp
(hash-table-count *h*)
```
```racket
;; racket
(hash-count h); also works with assoc lists and vectors:
(dict-count ih)
```
```clojure
;; clojure
(count ih)
```
```emacs-lisp
;; emacs-lisp
(hash-table-count h)
```


#### Lookup
```common-lisp
;; common-lisp
(gethash "t" *h*)
```
```racket
;; racket
(hash-ref h "t"); return -1 if not found:
(hash-ref h "m" -1); also works with assoc. lists and vectors:
(dict-ref ih "t")
(dict-ref ih "m" -1)
```
```clojure
;; clojure
(get ih "t")
(find ih "t"); return -1 if not found:
(get ih "m" -1)
```
```emacs-lisp
;; emacs-lisp
(gethash "t" h)
```


#### Update
```common-lisp
;; common-lisp
(setf (gethash "t" *h*) 1)
```
```racket
;; racket
(hash-set! h "t" 2)
(define ih2 (hash-set ih "t" 2)); also dict-set! and dict-set
```
```clojure
;; clojure
(def ih2 (assoc ih "t" 2))
```
```emacs-lisp
;; emacs-lisp
(puthash "t" 1 h)
```


#### Missing Key Behavior
```common-lisp
;; common-lisp
returns nil
```
```racket
;; racket
error
```
```clojure
;; clojure
returns nil
```
```emacs-lisp
;; emacs-lisp
returns nil
```


#### Is Key Present
```common-lisp
;; common-lisp
(nth-value 1 (gethash "t" *h*))
```
```racket
;; racket
(hash-has-key? h "t"); also dict-has-key?
```
```clojure
;; clojure
(contains? ih "t")
```
```emacs-lisp
;; emacs-lisp
none
```


#### Delete
```common-lisp
;; common-lisp
(remhash "t" *h*)
```
```racket
;; racket
(hash-remove! h "t")
(define ih2  (hash-remove ih "t")); also dict-remove! and dict-remove
```
```clojure
;; clojure
(def ih2 (dissoc ih "t"))
```
```emacs-lisp
;; emacs-lisp
(remhash "hello" h)
```


#### Merge
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
; values in ih2 take precedence:
(define ih3 (merge ih ih2))
```
```emacs-lisp
;; emacs-lisp

```


#### Invert
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(require 'clojure.set)
(define ih4 (clojure.set/map-invert ih))
```
```emacs-lisp
;; emacs-lisp

```


#### Iterate
```common-lisp
;; common-lisp
(maphash  (lambda (k v)    (print k)    (print v))  *h*)
```
```racket
;; racket
(hash-for-each h  (lambda (k v)    (printf "~a~n" k)    (printf "~a~n" v))); also dict-for-each
```
```clojure
;; clojure
(doseq [p ih]  (println (first p))  (println (second p)))
```
```emacs-lisp
;; emacs-lisp
(maphash  (lambda (k v)    (print k)    (print v))  h)
```


#### Keys And Values As Lists
```common-lisp
;; common-lisp
none
```
```racket
;; racket
(hash-keys h)
(hash-values h); also dict-keys and dict-values
```
```clojure
;; clojure
(def hkeys (map (fn [p] (first p)) ih))
(def hvals (map (fn [p] (second p)) ih))
```
```emacs-lisp
;; emacs-lisp
none
```


#### Defstruct
```common-lisp
;; common-lisp
(defstruct account id balance)
```
```racket
;; racket
(define-struct account (id (balance #:mutable)))
```
```clojure
;; clojure
(defstruct account :id :balance)
```
```emacs-lisp
;; emacs-lisp
(defstruct account id balance)
```


#### Struct
```common-lisp
;; common-lisp
(setq a  (make-account    :id 3    :balance 17.12))
```
```racket
;; racket
(define a (make-account 3 17.12))
```
```clojure
;; clojure
(def a (struct account 3 17.12))
```
```emacs-lisp
;; emacs-lisp
(setq a  (make-account :id 3 :balance 17.12))
```


#### Struct Getter
```common-lisp
;; common-lisp
(account-id a)
```
```racket
;; racket
(account-id a)
```
```clojure
;; clojure
(:id a)
```
```emacs-lisp
;; emacs-lisp
(account-id a)
```


#### Struct Setter
```common-lisp
;; common-lisp
(setf (account-balance a) 0)
```
```racket
;; racket
(set-account-balance! a 0)
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(setf (account-balance a) 0)
```


#### Struct Predicate
```common-lisp
;; common-lisp
(account-p a)
```
```racket
;; racket
(account? a)
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(account-p a)
```


#### Define Function
```common-lisp
;; common-lisp
(defun add (x y) (+ x y))
```
```racket
;; racket
(define (add x y) (+ x y))
```
```clojure
;; clojure
(defn add [x y] (+ x y))
```
```emacs-lisp
;; emacs-lisp
(defun add (x y) (+ x y))
```


#### Can Function And Variable Share Name
```common-lisp
;; common-lisp
yes
```
```racket
;; racket
no
```
```clojure
;; clojure
no
```
```emacs-lisp
;; emacs-lisp
yes
```


#### Optional Argument
```common-lisp
;; common-lisp
(defun add (a &optional b)  (if (null b) a (+ a b)))
```
```racket
;; racket
(define (add a (b null))  (if (null? b) a (+ a b)))
```
```clojure
;; clojure
(defn add ([a] a) ([a b] (+ a b)))no syntax error if called with more than 2 args:
(defn add [a & [b]]  (if (nil? b) a (+ a b)))
```
```emacs-lisp
;; emacs-lisp
(defun add (a &optional b)  (if (null b) a (+ a b)))
```


#### Variable Number Of Arguments
```common-lisp
;; common-lisp
(defun add (a &rest b)  (if (null b)    a    (+ a (eval (cons '+ b)))))
```
```racket
;; racket
(define (add a . b)  (if (null? b)    a    (+ a (apply + b))))
```
```clojure
;; clojure
(defn add [a & b]  (if (nil? b) a (+ a (apply + b))))
```
```emacs-lisp
;; emacs-lisp
(defun add (a &rest b)  (if (null b)    a    (+ a (eval (cons '+ b)))))
```


#### Default Value
```common-lisp
;; common-lisp
(defun add (a &optional (b 0))  (+ a b))
```
```racket
;; racket
racket:
(define (add a (b 0)) (+ a b))
```
```clojure
;; clojure
(defn add  ([a] (add a 0))  ([a b] (+ a b)))
```
```emacs-lisp
;; emacs-lisp
none
```


#### Named Parameter
```common-lisp
;; common-lisp
(defun logarithm (&key number base)  (/ (log number) (log base)))
(logarithm :base 2 :number 8)
```
```racket
;; racket
none
```
```clojure
;; clojure
(defn logarithm [{x :number b :base}] (/ (Math/log x) (Math/log b)))
(logarithm {:base 2 :number 8})
```
```emacs-lisp
;; emacs-lisp
(defun logarithm  (&key number &key base)  (if base    (/ (log number) (log base))    (log number))) order significant, not key names:
(logarithm :foo 8 :bar 2)
```


#### Return Multiple Values
```common-lisp
;; common-lisp
(defun sqrts (x)  (values (sqrt x) (- (sqrt x))))
```
```racket
;; racket
(define (sqrts x)  (values (sqrt x) (- (sqrt x))))
```
```clojure
;; clojure
(defn sqrts [x] (list (Math/sqrt x) (- (Math/sqrt x))))
```
```emacs-lisp
;; emacs-lisp
values creates a list:
(defun sqrts (x)  (values (sqrt x) (- (sqrt x))))
```


#### Assign Multiple Values To Local Variables
```common-lisp
;; common-lisp
(multiple-value-bind (r1 r2)  (sqrts 3)  r2)
```
```racket
;; racket
(let-values  (((r1 r2) (sqrts 3)))  r2)
```
```clojure
;; clojure
(let [[r1 r2] (sqrts 3)] r2)
```
```emacs-lisp
;; emacs-lisp
(multiple-value-bind  (r1 r2)  (sqrts 3)  r2)
```


#### Assign Multiple Values To Global Variables
```common-lisp
;; common-lisp
(multiple-value-setq (r1 r2)  (sqrts 3))
```
```racket
;; racket
(define-values (r1 r2) (sqrts 3))
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(multiple-value-setq (r1 r2) (sqrts 3))
```


#### Convert List To Multiple Values
```common-lisp
;; common-lisp
(values-list '(1 2 3))
```
```racket
;; racket
(apply values '(1 2 3))
```
```clojure
;; clojure
multiple values are lists
```
```emacs-lisp
;; emacs-lisp
multiple values are lists
```


#### Assign Multiple Values To List
```common-lisp
;; common-lisp
(multiple-value-list (sqrts 3))
```
```racket
;; racket
(call-with-values  (lambda () (sqrts 3))  list)
```
```clojure
;; clojure
multiple values are lists
```
```emacs-lisp
;; emacs-lisp
multiple values are lists
```


#### Tail Call Optimization
```common-lisp
;; common-lisp
yes for sbcl
```
```racket
;; racket
yes
```
```clojure
;; clojure
yes with recur
```
```emacs-lisp
;; emacs-lisp
no
```


#### Lambda
```common-lisp
;; common-lisp
(lambda (x) (* x x))
```
```racket
;; racket
(lambda (x) (* x x))
```
```clojure
;; clojure
#(* % %)
(fn [x] (* x x)); shortcut notation with two args:
#(* %1 %2)
```
```emacs-lisp
;; emacs-lisp
(lambda (x) (* x x))
```


#### Apply
```common-lisp
;; common-lisp
((lambda (x) (* x x)) 2)
(apply #'(lambda (x) (* x x)) '(2))
```
```racket
;; racket
((lambda (x) (* x x)) 2)
(apply (lambda (x) (* x x)) '(2))
```
```clojure
;; clojure
(#(* % %) 2)
((fn [x] (* x x)) 2)
(apply #(* % %) '(2))
```
```emacs-lisp
;; emacs-lisp
((lambda (x) (* x x)) 2)
(apply  #'(lambda (x) (* x x))  '(2))
```


#### Progn
```common-lisp
;; common-lisp
progn prog1 prog2
```
```racket
;; racket
begin none noner6rs:
begin begin0 none
```
```clojure
;; clojure
do none none
```
```emacs-lisp
;; emacs-lisp
progn prog1 prog2
```


#### Loop
```common-lisp
;; common-lisp
(setq i 1)
(loop (print "hello")  (if (> i 10)    (return)    (setq i (+ i 1))))
```
```racket
;; racket
none, use recursion
```
```clojure
;; clojure
(loop [i 1]  (if (<= i 10)      (do (println "hello")          (recur (+ i 1)))))
```
```emacs-lisp
;; emacs-lisp
(setq i 1)
(loop (print "hello")      (if (> i 10)          (return)          (setq i (+ i 1))))
```


#### Do
```common-lisp
;; common-lisp
(do ((i 1) (sum 0))  ((> i 100) sum)  (setq sum (+ sum i))  (setq i (+ i 1)))do* initializes serially
```
```racket
;; racket
none
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
(do ((i 1) (sum 0))    ((> i 100) sum)    (setq sum (+ sum i))    (setq i (+ i 1)))do* initializes sequentially
```


#### Dotimes
```common-lisp
;; common-lisp
(dotimes (i 10 nil)  (format t "hello~%"))
```
```racket
;; racket
none
```
```clojure
;; clojure
(dotimes [_ 10]  (println "hello"))
```
```emacs-lisp
;; emacs-lisp
(dotimes (i 10 nil)  (print "hello\n"))
```


#### If
```common-lisp
;; common-lisp
(if (< x 0) (- x) x)
```
```racket
;; racket
(if (< x 0) (- x) x)
```
```clojure
;; clojure
(if (< x 0) (- x) x)
```
```emacs-lisp
;; emacs-lisp
(if (< x 0) (- x) x)
```


#### When
```common-lisp
;; common-lisp
(when (< x y)  (print "x is less ")  (print "than y"))
```
```racket
;; racket
racket:
(when (< x y)  (display "x is less ")  (display "than y"))
```
```clojure
;; clojure
(when (< x y)  (println "x is less ")  (println "than y"))
```
```emacs-lisp
;; emacs-lisp
(when (< x y)  (print "x is less ")  (print "than y"))
```


#### Cond
```common-lisp
;; common-lisp
(cond ((> x 0) 1)  ((= x 0) 0)  (t -1))
```
```racket
;; racket
(cond ((> x 0) 1)  ((= x 0) 0)  (else -1))
```
```clojure
;; clojure
(cond (> x 0) 1  (= x 0) 0  true -1)
```
```emacs-lisp
;; emacs-lisp
(cond ((> x 0) 1)  ((= x 0) 0)  (t -1))
```


#### Lazy Evaluation
```common-lisp
;; common-lisp

```
```racket
;; racket
(define x (delay (/ 1 0)))
(promise? x)
(+ 1 (force x))
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Continuations
```common-lisp
;; common-lisp

```
```racket
;; racket
(define cc null)
(+ 1 (call/cc (lambda (x) (set! cc x) 0)))
(cc 5)
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Error
```common-lisp
;; common-lisp
(error "failed")
```
```racket
;; racket
(error "failed")
```
```clojure
;; clojure
(throw (Exception. "failed"))
```
```emacs-lisp
;; emacs-lisp
(error "failed")
```


#### Handle Error
```common-lisp
;; common-lisp
(handler-case  (error "failed")  (simple-error (e)    (format t "error: ~a" e)))
```
```racket
;; racket
(with-handlers  ((exn:fail?     (lambda (e)       (printf "error: ~a"         (exn-message e)))))  (error "failed"))
```
```clojure
;; clojure
(try (throw (Exception. "failure"))  (catch Exception e    (printf "error: %s"      (.getMessage e))))
```
```emacs-lisp
;; emacs-lisp
(condition-case e  (error "failed")  (error (message "error: %s"    (error-message-string e))))
```


#### Define Exception
```common-lisp
;; common-lisp
(define-condition odd-err (error)  ((num :accessor odd-err-num        :initarg :num))  (:report    (lambda (e s)      (format s "odd number: ~a"        (odd-err-num e)))))
```
```racket
;; racket
(define exn:odd-err? "odd number")
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
only symbols and keywords can be thrown and caught
```


#### Throw Exception
```common-lisp
;; common-lisp
(error 'odd-err :num 7)
```
```racket
;; racket
(raise exn:odd-err?)
```
```clojure
;; clojure
(throw (Exception. "failed"))
```
```emacs-lisp
;; emacs-lisp
(throw 'odd-err t)
```


#### Catch Exception
```common-lisp
;; common-lisp
(handler-case (/ 1 0)  (division-by-zero ()    (progn      (format t "division by zero")      nil)))
```
```racket
;; racket
(with-handlers ((exn:fail? (lambda (e) (begin (printf "division by zero~n") null)))) (/ 1 0))
```
```clojure
;; clojure
(try (/ 1 0) (catch ArithmeticException _ (do (println "division by zero") nil)))
```
```emacs-lisp
;; emacs-lisp
(catch 'failed (throw 'failed nil) t)
```


#### Restart Case
```common-lisp
;; common-lisp
(defun halve (l)  (mapcar (lambda (x)    (restart-case      (if (= (rem x 2) 0) (/ x 2)        (error 'odd-error :num x))      (round-down () (/ (- x 1) 2))      (round-up () (/ (+ x 1) 2)))) l))
```
```racket
;; racket

```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
none
```


#### Invoke Restart
```common-lisp
;; common-lisp
(handler-bind  ((odd-err      (lambda (c)        (invoke-restart          'round-down))))      (halve '(1 2 4 9)))
```
```racket
;; racket

```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
none
```


#### Finally Clause
```common-lisp
;; common-lisp
(unwind-protect  (error "failure")  (print "clean up"))
```
```racket
;; racket
none
```
```clojure
;; clojure
(try (throw (Exception. "failure"))     (finally (println "clean up")))
```
```emacs-lisp
;; emacs-lisp
(unwind-protect  (error "failure")  (print "clean up"))
```


#### Standard File Handles
```common-lisp
;; common-lisp
*standard-input*
*standard-output*
*error-output*
```
```racket
;; racket
(current-input-port)
(current-output-port)
(current-error-port)
```
```clojure
;; clojure
*in*
*out*
*err*
```
```emacs-lisp
;; emacs-lisp

```


#### End Of File Behavior
```common-lisp
;; common-lisp
read-line returns two values, the 2nd set to T at end-of-file.
EOF-OF-FILE is signaled when reading past end of file.
```
```racket
;; racket
Returns the value eof.Use eof-object? to test for it.
```
```clojure
;; clojure
.readLine on a java.io.Reader object returns nil.
```
```emacs-lisp
;; emacs-lisp

```


#### Read Line From Stdin
```common-lisp
;; common-lisp
(setq line (read-line))
```
```racket
;; racket
(let ((s (read-line)))  #|use s|#)
```
```clojure
;; clojure
(let [s (read-line)]  (comment use s))
```
```emacs-lisp
;; emacs-lisp

```


#### Chomp
```common-lisp
;; common-lisp

```
```racket
;; racket
read-line discards newline
```
```clojure
;; clojure
read-line discards newline
```
```emacs-lisp
;; emacs-lisp

```


#### Write Line To Stdout
```common-lisp
;; common-lisp
(defun println (s)  (format t "~a~%" s))
(println "hello")
```
```racket
;; racket
(write-string s)
(newline)
```
```clojure
;; clojure
(println "hello")
```
```emacs-lisp
;; emacs-lisp

```


#### Write Formatted String To Stdout
```common-lisp
;; common-lisp
(format t "~s ~d: ~2$~%"  "foo"  7  13.7)
```
```racket
;; racket
(printf "~a ~a: ~a~n"  "foo"  7  (/ (round (* 13.7 100)) 100))
```
```clojure
;; clojure
(printf "%s %d %.2f\n" "foo" 7 13.7)
```
```emacs-lisp
;; emacs-lisp

```


#### Open File For Reading
```common-lisp
;; common-lisp
(setq in (open "/etc/hosts"))
```
```racket
;; racket
(let  ((f (open-input-file "/etc/hosts")))  #| use f |#)
```
```clojure
;; clojure
; f is java.io.Reader object:
(let [f (clojure.java.io/reader "/etc/hosts")]  (.readLine f))
```
```emacs-lisp
;; emacs-lisp

```


#### Open File For Writing
```common-lisp
;; common-lisp
(setq out (open "/tmp/test" :direction :output :if-exists :supersede))
```
```racket
;; racket
(let  ((f (open-output-file        "/tmp/foo"        #:exists 'truncate)))  #| use f |#)
```
```clojure
;; clojure
; f is java.io.Writer object:
(let [f (clojure.java.io/writer "/tmp/foo")]  (.write f "lorem ipsum\n")  (.close f))
```
```emacs-lisp
;; emacs-lisp

```


#### Open File For Appending
```common-lisp
;; common-lisp
(setq out (open "/tmp/test" :direction :output :if-exists :append))
```
```racket
;; racket
(let  ((f (open-output-file        "/tmp/foo"        #:exists 'append)))  #| use f |#)
```
```clojure
;; clojure
(let [f (clojure.java.io/writer "/tmp/foo"      :append true)]  (.write f "lorem ipsum\n")  (.close f))
```
```emacs-lisp
;; emacs-lisp

```


#### Close File
```common-lisp
;; common-lisp
(close in)
```
```racket
;; racket
(close-input-port f)
(close-output-port f)
```
```clojure
;; clojure
(.close f)
```
```emacs-lisp
;; emacs-lisp

```


#### Close File Implicitly
```common-lisp
;; common-lisp
(with-open-file (out #P"/tmp/test" :direction :output) (write-line "lorem ipsum" out))
```
```racket
;; racket
(call-with-input-file  "/etc/hosts"  (lambda (f) (#| use f |#)); also call-with-output-file
```
```clojure
;; clojure
(with-open [f    (clojure.java.io/reader "/etc/hosts")]  (comment use f))
```
```emacs-lisp
;; emacs-lisp

```


#### Read Line
```common-lisp
;; common-lisp
(setq line (read-line f))
```
```racket
;; racket
(define line (read-line in))
```
```clojure
;; clojure
(.readLine f)
```
```emacs-lisp
;; emacs-lisp

```


#### Iterate Over File By Line
```common-lisp
;; common-lisp

```
```racket
;; racket
(for ([line (in-lines        (open-input-file          "/etc/hosts"))])  (write-string line)  (newline))
```
```clojure
;; clojure
(loop [line (.readLine f)]  (if (not= line nil)    (do (println line)      (recur (.readLine f)))))
```
```emacs-lisp
;; emacs-lisp

```


#### Read File Into Array Of Strings
```common-lisp
;; common-lisp

```
```racket
;; racket
; to list of strings:
(sequence->list (in-lines    (open-input-file "/etc/hosts")))
```
```clojure
;; clojure
(vec (line-seq f))
```
```emacs-lisp
;; emacs-lisp

```


#### Read File Into String
```common-lisp
;; common-lisp

```
```racket
;; racket
(define s (file->string "/etc/hosts"))
```
```clojure
;; clojure
(let [s (slurp "/etc/hosts")]  (print s))
```
```emacs-lisp
;; emacs-lisp

```


#### Write String
```common-lisp
;; common-lisp

```
```racket
;; racket
(write-string s f)
```
```clojure
;; clojure
(.write f s)
```
```emacs-lisp
;; emacs-lisp

```


#### Write Line
```common-lisp
;; common-lisp

```
```racket
;; racket
(write-string s f)
(newline f)
```
```clojure
;; clojure
(.write f (println-str s))
```
```emacs-lisp
;; emacs-lisp

```


#### Flush File Handle
```common-lisp
;; common-lisp

```
```racket
;; racket
(flush-output f)
```
```clojure
;; clojure
(f .flush)
```
```emacs-lisp
;; emacs-lisp

```


#### File Handle Positionget Set
```common-lisp
;; common-lisp

```
```racket
;; racket
; Evaluates to non-negative integer:
(file-position f); Sets next read or write
; to beginning of file:
(file-position f 0)
```
```clojure
;; clojure
; arg is characters from current position;
; moving backward not possible:
(.skip f 1000); arg is max characters to buffer:
(.mark f 1000000); move to position saved when .mark was called:
(.rest f)
```
```emacs-lisp
;; emacs-lisp

```


#### In Memory Stream
```common-lisp
;; common-lisp
(setq f (make-string-input-stream    "lorem ipsum"))
(read-line f)
(setq f2 (make-string-output-stream)
(write-string "lorem ipsum)
(get-output-stream-string out)
```
```racket
;; racket
(define f (open-input-string "lorem ipsum"))
(read-line f)
(define f2 (open-output-string))
(write-string "lorem ipsum" f2)
(get-output-string f2)
```
```clojure
;; clojure
; use *in* to read from string:
(with-in-str "lorem ispum"  (read-line)); use *out* to write to string:
(with-out-str  (println "lorem ipsum"))
```
```emacs-lisp
;; emacs-lisp

```


#### List Buffers
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; list of buffer objects:
(buffer-list);; name of first buffer in list:
(buffer-name (car (buffer-list)));; name of current buffer:
(buffer-name (current-buffer))
```


#### Current Bufferget And Set
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; name of current buffer:
(buffer-name (current-buffer));; open in current pane:
(switch-to-buffer "foo.txt");; open in other pane:
(switch-to-buffer-other-window  "bar.txt")
```


#### Clear Buffer
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; current buffer:
(erase-buffer);; buffer named "foo.txt:
(with-current-buffer "foo.txt"  (erase-buffer))
```


#### Pointget And Set
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; 1-based index of char under cursor:
(point);; go to beginning of current buffer:
(goto-char 1);; go to end of current buffer:
(goto-char (buffer-size))
```


#### Search And Set Point
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; Set point to character after string.
;; 1st arg is position in buffer beyond
;;   which search stops.
;; If 2nd arg is true, return nil
;;   on failure, otherwise raise error.
;; 3rd argument is the occurrence
;;   of the string, if negative
;;   search backwards from point.
(search-forward "lorem" nil t 1)
```


#### Insert At String Point
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; takes 1 or more args:
(insert "lorem" " ipsum")
```


#### Current Buffer As String
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(buffer-string)
```


#### Insert File Contents At Point
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(insert-file "/etc/passwd")
```


#### Markget And Set
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
;; to beginning of current buffer:
(set-mark 1);; to point of current buffer:
(set-mark (point))
```


#### File Test Regular File Test
```common-lisp
;; common-lisp
(osicat:file-exists-p "/tmp/foo")
(osicat:regular-file-exists-p "/tmp/foo")
```
```racket
;; racket
??
(file-exists? "/etc/hosts")
```
```clojure
;; clojure
(.exists (io/file "/etc/hosts"))
```
```emacs-lisp
;; emacs-lisp
(file-exists-p "/etc/hosts")
(file-regular-p "/etc/hosts")
```


#### File Size
```common-lisp
;; common-lisp

```
```racket
;; racket
(file-size "/etc/hosts")
```
```clojure
;; clojure
(.length (io/file "/etc/hosts"))
```
```emacs-lisp
;; emacs-lisp
(eighth  (file-attributes "/etc/hosts"))
```


#### Is File Readable Writable Executable
```common-lisp
;; common-lisp

```
```racket
;; racket
(pair? (filter    (lambda (x) (eq? x 'read))    (file-or-directory-permissions      "/etc/hosts")))
(pair? (filter    (lambda (x) (eq? x 'write))    (file-or-directory-permissions      "/etc/hosts")))
(pair? (filter    (lambda (x) (eq? x 'execute))    (file-or-directory-permissions      "/etc/hosts")))
```
```clojure
;; clojure
(.canRead (io/file "/etc/hosts"))
(.canWrite (io/file "/etc/hosts"))
(.canExecute (io/file "/etc/hosts"))
```
```emacs-lisp
;; emacs-lisp

```


#### Set File Permissions
```common-lisp
;; common-lisp

```
```racket
;; racket
(file-or-directory-permissions  "/tmp/foo"  #o755)
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(set-file-modes "/tmp/foo" #o755)
```


#### Last Modification Time
```common-lisp
;; common-lisp

```
```racket
;; racket
(file-or-directory-modify-seconds "/tmp/foo")
```
```clojure
;; clojure
; Unix epoch in milliseconds:
(.lastModified (java.io.File. "/tmp/foo"))
```
```emacs-lisp
;; emacs-lisp

```


#### Copy File Remove File Rename File
```common-lisp
;; common-lisp
(cl-fad:copy-file #P"/tmp/foo"  #P"/tmp/bar")
(delete-file #P"/tmp/foo")
(rename-file #P"/tmp/bar"  #P"/tmp/foo")
```
```racket
;; racket
(copy-file "/tmp/foo" "/tmp/bar")
(delete-file "/tmp/foo")
(rename-file-or-directory  "/tmp/bar"  "/tmp/foo")
```
```clojure
;; clojure
(clojure.java.io/copy  (java.io.File. "/tmp/foo")  (java.io.File. "/tmp/bar"))
(clojure.java.io/delete-file "/tmp/foo")
(.renameTo (java.io.File. "/tmp/bar")  (java.io.File. "/tmp/foo"))
```
```emacs-lisp
;; emacs-lisp
(copy-file "/tmp/foo" "/tmp/bar")
(delete-file "/tmp/foo")
(rename-file "/tmp/bar" "/tmp/foo")
```


#### Create Symlink Symlink Test Get Target
```common-lisp
;; common-lisp
(osicat:make-link "/tmp/hosts" :target "/etc/hosts")
```
```racket
;; racket
(make-file-or-directory-link  "/etc/hosts"  "/tmp/hosts")
(link-exists? "/tmp/hosts")??
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(make-symbolic-link "/etc/hosts" /tmp/hosts")returns target if symlink or nil:
(file-symlink-p "/tmp/hosts")
```


#### Temporary File
```common-lisp
;; common-lisp

```
```racket
;; racket
(define tmp (make-temporary-file))
(path->string tmp)
```
```clojure
;; clojure
; java.io.File:
(java.io.File/createTempFile "foo" ".txt")
```
```emacs-lisp
;; emacs-lisp
(make-temp-file "foo")
```


#### Build Pathname
```common-lisp
;; common-lisp
(make-pathname  :directory '(:absolute "etc")  :name "hosts")
```
```racket
;; racket
; returns path; convert to string
; with path->string:
(build-path "/etc" "hosts")
```
```clojure
;; clojure
(require '[clojure.java.io :as io]); returns java.io.File;
; convert to string with .getPath:
(io/file "/etc" "hosts")
```
```emacs-lisp
;; emacs-lisp

```


#### Dirname And Basename
```common-lisp
;; common-lisp
(pathname-directory #P"/etc/hosts")
(pathname-name #P"/etc/hosts")
```
```racket
;; racket
(let-values (((dir file _)        (split-path "/etc/hosts")))  #| use dir or file |#)
```
```clojure
;; clojure
(require '[clojure.java.io :as io])
(.getParent (io/file "/etc/hosts"))
(.getName (io/file "/etc/hosts"))
```
```emacs-lisp
;; emacs-lisp
(file-name-directory "/etc/hosts")
(file-name-nondirectory  "/etc/hosts")
```


#### Absolute Pathname
```common-lisp
;; common-lisp

```
```racket
;; racket
(simplify-path  (path->complete-path ".."))
```
```clojure
;; clojure
(.getCanonicalPath (java.io.File. ".."))
```
```emacs-lisp
;; emacs-lisp
(expand-file-name "..")
```


#### Iterate Over Directory By File
```common-lisp
;; common-lisp
(dolist (file (osicat:list-directory "/tmp")) (format t "~a~%" file))
```
```racket
;; racket
(for ([path (directory-list "/etc")])  (write-string    (path->string path)))
```
```clojure
;; clojure
; file-seq returns java.io.File objects for files
; in arg directory and any subdirs recursively.
(filter #(= (.getParent %) "/etc")  (file-seq (clojure.java.io/file "/etc")))
```
```emacs-lisp
;; emacs-lisp
(dolist  (file (directory-files "/etc"))  (print file)))
```


#### Make Directory
```common-lisp
;; common-lisp

```
```racket
;; racket
(make-directory* "/tmp/foo/bar")
```
```clojure
;; clojure
(require '[clojure.java.io :as io])
(.mkdir (io/file "/tmp/foo"))
```
```emacs-lisp
;; emacs-lisp
creates parents if 2nd arg non-nil:
(make-directory "/tmp/foo/bar" t)
```


#### Recursive Copy
```common-lisp
;; common-lisp

```
```racket
;; racket
(copy-directory/files "/tmp/foo.d"  "/tmp/bar.d")
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Remove Empty Directory
```common-lisp
;; common-lisp
(delete-directory "/tmp/foo.d")
```
```racket
;; racket
(delete-directory "/tmp/foo.d")
```
```clojure
;; clojure
(clojure.java.io/delete-file "/tmp/foo.d")
```
```emacs-lisp
;; emacs-lisp
(delete-directory "/tmp/foo.d")
```


#### Remove Directory And Contents
```common-lisp
;; common-lisp
(osicat:delete-directory-and-files "/tmp/foo.d")
```
```racket
;; racket
(delete-directory/files "/tmp/foo.d")
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(delete-directory "/tmp/foo.d" t)
```


#### Directory Test
```common-lisp
;; common-lisp
(osicat:directory-exists-p #P"/etc")
```
```racket
;; racket
(directory-exists? "/etc")
```
```clojure
;; clojure
(.isDirectory (io/file "/etc"))
```
```emacs-lisp
;; emacs-lisp
(file-directory-p "/etc")
```


#### Command Line Arguments
```common-lisp
;; common-lisp
*posix-argv*
```
```racket
;; racket
current-command-line-arguments
```
```clojure
;; clojure
*command-line-args*
```
```emacs-lisp
;; emacs-lisp
in shebang mode only:
command-line-args or argv
```


#### Program Name
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Environment Variables
```common-lisp
;; common-lisp
(posix-getenv "HOME")
```
```racket
;; racket
(getenv "HOME")
```
```clojure
;; clojure
(System/getenv "HOME")
```
```emacs-lisp
;; emacs-lisp
(getenv "HOME")
```


#### User Id And Name
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Exit
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### External Command
```common-lisp
;; common-lisp
(run-program "ls" '( "/etc"))
```
```racket
;; racket
(require scheme/system)
(system "ls /etc")
```
```clojure
;; clojure
(.exec (Runtime/getRuntime) "ls")
```
```emacs-lisp
;; emacs-lisp
(shell-command "ls /etc")
```


#### Command Substitution
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
(shell-command-to-string "ls /etc")
```


#### Complete Example
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
$ cat b/a.clj
(ns b.a)
(def x 3)
$ java -cp clojure.jar:. clojure.main
=> (require 'b.a)
=> b.a/x
3
```
```emacs-lisp
;; emacs-lisp

```


#### Compile Library
```common-lisp
;; common-lisp
(compile-file "a.lisp")
```
```racket
;; racket
$ raco make a.rkt
```
```clojure
;; clojure
(compile 'a)
```
```emacs-lisp
;; emacs-lisp
$ emacs -batch -Q -L . \  -f batch-byte-compile a.el
```


#### Load Library
```common-lisp
;; common-lisp
(load "a.lisp")
```
```racket
;; racket
(require a)
```
```clojure
;; clojure
(require 'a)
```
```emacs-lisp
;; emacs-lisp
(require "a")
```


#### Load Library In Subdirectory
```common-lisp
;; common-lisp
(load "b/a.lisp")
```
```racket
;; racket
(require "b/a.rkt")
```
```clojure
;; clojure
(require 'b.a)
```
```emacs-lisp
;; emacs-lisp

```


#### Hot Patch
```common-lisp
;; common-lisp
(load "a.lisp")
```
```racket
;; racket
none
```
```clojure
;; clojure
(require 'b.a :reload)
```
```emacs-lisp
;; emacs-lisp
(load "a")
```


#### Load Error
```common-lisp
;; common-lisp
raises sb-int:simple-file-error
```
```racket
;; racket
raises exn:fail:syntax:missing-module. Because require must be top-level, the exception cannot be handled.
```
```clojure
;; clojure
raises FileNotFoundException
```
```emacs-lisp
;; emacs-lisp
raises file-err
```


#### Library Path
```common-lisp
;; common-lisp
contains working directory at startup
```
```racket
;; racket
(require setup/dirs)
(get-collects-search-dirs)
```
```clojure
;; clojure
same as path used by java VM
```
```emacs-lisp
;; emacs-lisp
; adds directory to library path:
(add-to-list 'load-path ("/home/ed/.emacs.d/lib"))
```


#### Library Path Environment Variable
```common-lisp
;; common-lisp
none
```
```racket
;; racket

```
```clojure
;; clojure
CLASSPATH
```
```emacs-lisp
;; emacs-lisp
EMACSLOADPATH
```


#### Library Path Command Line Option
```common-lisp
;; common-lisp
none
```
```racket
;; racket

```
```clojure
;; clojure
$ java -cp /foo/bar:/baz/quux
```
```emacs-lisp
;; emacs-lisp
$ emacs -L /foo/bar
```


#### Namespace Declaration
```common-lisp
;; common-lisp
(defpackage :foo)
```
```racket
;; racket
(module mconst racket  (provide pi)  (define pi 3.14))
```
```clojure
;; clojure
(ns mconst)
```
```emacs-lisp
;; emacs-lisp
No namespaces; a common convention is to use a prefix on all identifiers in a library, separated from the rest of the identifier by a hyphen.
```


#### Subnamespace Declaration
```common-lisp
;; common-lisp
none
```
```racket
;; racket

```
```clojure
;; clojure
; must be in b/a.clj:
(ns b.a)
```
```emacs-lisp
;; emacs-lisp

```


#### Namespace Separator
```common-lisp
;; common-lisp
:
```
```racket
;; racket
:
```
```clojure
;; clojure
. and /
```
```emacs-lisp
;; emacs-lisp

```


#### Import Definitions
```common-lisp
;; common-lisp
; set current *package* to foo and import symbol twiddle from bar:
(defpackage :foo  (:import-from :bar :twiddle))
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Import All Definitions In Namespace
```common-lisp
;; common-lisp
; set current *package* to foo and import symbols from bar:
(defpackage :foo  (:use :bar))
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Namespace Shadow Avoidance
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Identifier Shadow Avoidance
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Package Manager Help
```common-lisp
;; common-lisp

```
```racket
;; racket
$ raco help
$ raco pkg --help
$ raco pkg install --help
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### List Installed Packages
```common-lisp
;; common-lisp

```
```racket
;; racket
$ raco pkg show --all
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
M-x list packages
```


#### Search Packages
```common-lisp
;; common-lisp
(ql:system-apropos "time")
```
```racket
;; racket
http://pkgs.racket-lang.org
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
M-x list-packages
```


#### Install Package
```common-lisp
;; common-lisp
; install quicklisp
(load "~/quicklisp/setup.lisp")
(ql:quickload "osicat")
```
```racket
;; racket
$ raco pkg install --deps search-auto srfi
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
Use M-x list-packages to bring up the package menu; i to select a package to install, and x to install it.
```


#### Remove Package
```common-lisp
;; common-lisp

```
```racket
;; racket
$ raco pkg remove srfi
```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp
In the package menu, use d to select a package to uninstall and x to uninstall it.
```


#### Define Class
```common-lisp
;; common-lisp
(defclass rectangle ()  (    (height      :accessor rectangle-height      :initarg :height)    (width      :accessor rectangle-width      :initarg :width)))
```
```racket
;; racket
(define rectangle%  (class object%    (init width)    (init height)    (super-new)    (define curr-height height)    (define curr-width width)    (define/public (get-height)      curr-height)    (define/public (get-width)      curr-width)    (define/public (set-height ht)      (set! curr-height ht))    (define/public (set-width wd)      (set! curr-width wd))))
```
```clojure
;; clojure
use java:
public class Rectangle {  public float height;  public float width;  public Rectangle(float h, float w) {    this.height = h;    this.width = w;  }  public void setHeight(float h) {    this.height = h;  }  public void setWidth(float w) {    this.width = w;
}
```
```emacs-lisp
;; emacs-lisp

```


#### Make Instance
```common-lisp
;; common-lisp
(make-instance 'rectangle  :height 3  :width 7)
```
```racket
;; racket
(define rect  (new rectangle    (height 7)    (width 3)))
```
```clojure
;; clojure
(import 'Rectangle)
(def r (Rectangle. 7 3))
```
```emacs-lisp
;; emacs-lisp

```


#### Read Attribute
```common-lisp
;; common-lisp
(rectangle-height rect)
```
```racket
;; racket
(send rect get-height)
```
```clojure
;; clojure
(.height r)
```
```emacs-lisp
;; emacs-lisp

```


#### Write Attribute
```common-lisp
;; common-lisp
(setf (rectangle-height rect) 4)
```
```racket
;; racket
(send rect set-height 4)
```
```clojure
;; clojure
(.setHeight r 8)
```
```emacs-lisp
;; emacs-lisp

```


#### Define Method
```common-lisp
;; common-lisp
(defmethod area ((figure rectangle))  (* (rectangle-height figure)    (rectangle-width figure)))
```
```racket
;; racket
(define/public (area)  (* curr-height curr-width))
```
```clojure
;; clojure
(defmulti area class)
(defmethod area Rectangle [r] (* (.height r) (.width r)))
```
```emacs-lisp
;; emacs-lisp

```


#### Invoke Method
```common-lisp
;; common-lisp
(area rect)
```
```racket
;; racket
(send rect area)
```
```clojure
;; clojure
(area r)
```
```emacs-lisp
;; emacs-lisp

```


#### Universal Superclass
```common-lisp
;; common-lisp
standard-object t
```
```racket
;; racket
object%
```
```clojure
;; clojure
Object
```
```emacs-lisp
;; emacs-lisp

```


#### Multiple Inheritance
```common-lisp
;; common-lisp
yes
```
```racket
;; racket
no
```
```clojure
;; clojure
only one direct superclass; can implement multiple interfaces
```
```emacs-lisp
;; emacs-lisp

```


#### Backquote And Comma
```common-lisp
;; common-lisp
(setq op '+)
(eval `(,op 1 1))
```
```racket
;; racket
(define op '+)
(eval `(,op 1 1))
(eval (quasiquote ((unquote op) 1 1)))
```
```clojure
;; clojure
(def op +)
(eval `(,op 1 1))
```
```emacs-lisp
;; emacs-lisp
(setq op '+)
(eval `(,op 1 1))
```


#### Defmacro
```common-lisp
;; common-lisp
(defmacro rpn (arg1 arg2 op)  (list op arg1 arg2))
```
```racket
;; racket
(define-syntax-rule (rpn arg1 arg2 op) (op arg1 arg2))
```
```clojure
;; clojure
(defmacro rpn [arg1 arg2 op]  (list op arg1 arg2))
```
```emacs-lisp
;; emacs-lisp
(defmacro rpn (arg1 arg2 op)  (list op arg1 arg2))
```


#### Defmacro W Backquote
```common-lisp
;; common-lisp
(defmacro rpn (arg1 arg2 op)  `(,op ,arg1 ,arg2))
```
```racket
;; racket
(define-syntax-rule (rpn3 arg1 arg2 op)  (eval ‘(,op ,arg1 ,arg2)))
```
```clojure
;; clojure
(defmacro rpn [arg1 arg2 op] `(~op ~arg1 ~arg2))
```
```emacs-lisp
;; emacs-lisp
(defmacro rpn (arg1 arg2 op)  `(,op ,arg1 ,arg2))
```


#### Macro Predicate
```common-lisp
;; common-lisp
(macro-function rpn)
```
```racket
;; racket
none
```
```clojure
;; clojure
none
```
```emacs-lisp
;; emacs-lisp
none
```


#### Macroexpand
```common-lisp
;; common-lisp
(macroexpand ’(rpn 1 2 +))
```
```racket
;; racket
(syntax-object->datum (expand-to-top-form '(rpn 1 2 +)))
```
```clojure
;; clojure
(macroexpand '(rpn 1 2 +))
```
```emacs-lisp
;; emacs-lisp
(macroexpand '(rpn 1 2 +))
```


#### Splice Quote
```common-lisp
;; common-lisp
(defmacro add ( &rest args )  `(+ ,@args))
```
```racket
;; racket
(define-syntax-rule ( add first …) (+ first …))
```
```clojure
;; clojure
(defmacro add [ & args ] `(+ ~@args))
```
```emacs-lisp
;; emacs-lisp
(defmacro add ( &rest args )  `(+ ,@args))
```


#### Recursive Macro
```common-lisp
;; common-lisp
(defmacro add (a &rest b)  `(if (null ',b)    (+ ,a)    (+ ,a (add ,@b))))
```
```racket
;; racket
(define-syntax add (syntax-rules ()  [(add x) x]  [(add x y) (+ x y)]  [(add x y …) (+ x (add y …))]))
```
```clojure
;; clojure
(defmacro add ([a] `(+ ~a)) ([a & b] `(+ ~a (add ~@b))))
```
```emacs-lisp
;; emacs-lisp
(defmacro add (a &rest b)  `(if (null ',b)    (+ ,a)    (+ ,a (add ,@b))))
```


#### Hygienic
```common-lisp
;; common-lisp
no
```
```racket
;; racket
yes
```
```clojure
;; clojure
with # suffix
```
```emacs-lisp
;; emacs-lisp
no
```


#### Local Values
```common-lisp
;; common-lisp
(defmacro square-sum (x y)  (let ((sum (gensym)))    `(let ((,sum (+ ,x ,y)))      (* ,sum ,sum))))
```
```racket
;; racket
(define-syntax-rule (square-sum x y)  (let ((sum (+ x y)))    (* sum sum)))
```
```clojure
;; clojure
(defmacro two-list [x] `(let [arg# ~x] (list arg# arg#)))
```
```emacs-lisp
;; emacs-lisp
(defmacro square-sum (x y)  (let ((sum (gensym)))    `(let ((,sum (+ ,x ,y)))      (* ,sum ,sum))))
```


#### Inspect Type
```common-lisp
;; common-lisp
(type-of '(1 2 3))
(typep '(1 2 3) 'list)
(listp '(1 2 3))
```
```racket
;; racket
(list? '(1 2 3))
```
```clojure
;; clojure
(= (type 1) java.lang.Long)
(= (class 1) java.lang.Long)
(integer? 1)
```
```emacs-lisp
;; emacs-lisp
(type-of [1 2 3] 'vector)
(typep [1 2 3] 'vector)
(vectorp [1 2 3])
```


#### Instance Of
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
instance?
```
```emacs-lisp
;; emacs-lisp

```


#### Basic Types
```common-lisp
;; common-lisp
logical and numeric:
bignum bit complex double-float fixnum float integer long-float nil null number ratio rational real short-float signed-btye single-float t unsigned-bytesymbols and strings:
base-character character extended-character keyword simple-string standard-char string symboldata structures:
array atom bit-vector cons hash-table list sequence simple-array simple-bit-vector simple-vector vectorother:
compiled-function function package pathname random-state stream
```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Sequence Data Types
```common-lisp
;; common-lisp
list vector
```
```racket
;; racket
list vector hash-table string input-port range
```
```clojure
;; clojure
all collections and strings
```
```emacs-lisp
;; emacs-lisp
list vector
```


#### Get Docstring
```common-lisp
;; common-lisp
(describe #'mapcar)
```
```racket
;; racket
none
```
```clojure
;; clojure
(doc map)
```
```emacs-lisp
;; emacs-lisp
(describe-function 'mapcar)
```


#### Define Function With Docstring
```common-lisp
;; common-lisp
(defun add (x y)  "add x and y"  (+ x y))
```
```racket
;; racket
none
```
```clojure
;; clojure
(defn add "add x and y" [x y]  (+ x y))
```
```emacs-lisp
;; emacs-lisp
(defun add (x y)  "add x and y"  (+ x y))
```


#### Apropos And Documentation Search
```common-lisp
;; common-lisp
none
```
```racket
;; racket
none
```
```clojure
;; clojure
(apropos #"^add$")
(find-doc #"add \S+ and \S+")
```
```emacs-lisp
;; emacs-lisp
(apropos "^add$")none
```


#### New
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(def rnd (new java.util.Random))
(def rnd (java.util.Random.))
```
```emacs-lisp
;; emacs-lisp

```


#### Method
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(. rnd nextFloat)
(.nextFloat rnd)
(. rnd nextInt 10)
(.nextInt rnd 10)
```
```emacs-lisp
;; emacs-lisp

```


#### Class Method
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(Math/sqrt 2)
```
```emacs-lisp
;; emacs-lisp

```


#### Chain
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure

```
```emacs-lisp
;; emacs-lisp

```


#### Import
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(import '(java.util Random))
(def rnd (Random.))
```
```emacs-lisp
;; emacs-lisp

```


#### To Java Array
```common-lisp
;; common-lisp

```
```racket
;; racket

```
```clojure
;; clojure
(to-array '(1 2 3))
(into-array Integer '(1 2 3))
```
```emacs-lisp
;; emacs-lisp

```