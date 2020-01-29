to build and run,   
  navigate to the directory containing cabal.project

type;
> cabal new-run helloUse

this should produce the output;
"hello world"

--

the project works like this;

the cabal.project file lists the packages;

helloStr, worldStr, hello, helloBackpack, helloUse.

package helloStr,
 has a cabal file helloStr.cabal
 which exposes the library helloStr
 made from the HelloStr.hs, 
 which defines hello = "hello" :: String 

package worldStr
 has a cabal file worldStr.cabal
 which exposes the library worldStr
 exporting the module WorldStr.hs, 
 which defines world = "world" :: String 

package hello
 has a cabal file hello.cabal
 which exposes the library hello, and the signature Hello
 exporting the module TestHello.hs, which relies on Hello.hsig 
 .. more details on how this Signature and its Use below

package helloBackpack
 has a cabal file helloBackpack.cabal
 which exposes the library helloBackpack
 exporting the modules HelloStrHello & WorldStrHello 
 .. more details on how these implement str :: String below

package helloUse
 has a cabal file helloUse.cabal
 which exposes the library helloUse, and the executable hello-example
 built from the Main.hs file
 this cabal file is where the mixins are;
  mixins: hello (TestHello as Hello.TestHello) requires (Hello as HelloStrHello)
  mixins: hello (TestHello as World.TestHello) requires (Hello as WorldStrHello)


.. more details here;

Main.hs consists of the text;

----
module Main where

import qualified Hello.TestHello as Hello
import qualified World.TestHello as World

main :: IO ()
main = do
 Hello.testHello
 putStr " "
 World.testHello
----

the modules it imports are defined using "mixins" (see above)
which is where the backpack signature is implemented in 2 different ways.
its "abstract" function str :: String defined in the Singnature Hello.hsig 
and this is implemented using the 2 different modules which export a function str :: String ()
the hello library consists of the signature and a module which import is.
the mixins implement the Signature as actual modules as specified

----
module TestHello where

import Hello (str)

testHello :: IO ()
testHello = putStr str
----

by importing either HelloStrHello or WorldStrHello instead of Hello
different values of str are specifed to be either "hello" or "world"
then, when they are finally used in HelloUse, with the mixins defined quallifed imports, testHello can be called, where its "backpack has been swapped".... meaning that the variable `str' is that exported by either of these different implementations of the signature Hello (str)...






