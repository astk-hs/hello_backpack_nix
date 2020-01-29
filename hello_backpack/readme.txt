hask@LAPTOP-PQ3KPQAO:~/HelloWorld-backpack/backpack_example/helloDistributed$ nix-build -A helloUse
these derivations will be built:
  /nix/store/iwv3knc60s6i3k0na9dda3w05yly4px8-helloUse-0.drv
building '/nix/store/iwv3knc60s6i3k0na9dda3w05yly4px8-helloUse-0.drv'...
setupCompilerEnvironmentPhase
Build with /nix/store/4f3cg8xp7kjmbh0mnvdwz8hir204iivg-ghc-8.8.1.
unpacking sources
unpacking source archive /nix/store/ggisndgsm7wqcvwgdnzirlgc67qk47cv-helloUse
source root is helloUse
patching sources
compileBuildDriverPhase
setupCompileFlags: -package-db=/tmp/nix-build-helloUse-0.drv-0/setup-package.conf.d -j4 -threaded
[1 of 1] Compiling Main             ( /nix/store/4mdp8nhyfddh7bllbi7xszz7k9955n79-Setup.hs, /tmp/nix-build-helloUse-0.drv-0/Main.o )
Linking Setup ...
configuring
configureFlags: --verbose --prefix=/nix/store/i73dvx5as11g41a5g9zg2qc8wz38a441-helloUse-0 --libdir=$prefix/lib/$compiler --libsubdir=$abi/$libname --with-gcc=gcc --package-db=/tmp/nix-build-helloUse-0.drv-0/package.conf.d --ghc-option=-j4 --disable-split-objs --enable-library-profiling --profiling-detail=exported-functions --disable-profiling --enable-shared --disable-coverage --enable-static --disable-executable-dynamic --enable-tests --disable-benchmarks --enable-library-vanilla --disable-library-for-ghci --ghc-option=-split-sections --extra-lib-dirs=/nix/store/24xdpjcg2bkn2virdabnpncx6f98kgfw-ncurses-6.1-20190112/lib --extra-lib-dirs=/nix/store/qa8wyi9pckq1d3853sgmcc61gs53g0d3-libffi-3.3/lib --extra-lib-dirs=/nix/store/4gmyxj5blhfbn6c7y3agxczrmsm2bhzv-gmp-6.1.2/lib
Using Parsec parser
Configuring helloUse-0...
Dependency base -any: using base-4.13.0.0
Dependency hello -any: using hello-0
Dependency base -any: using base-4.13.0.0
Dependency hello -any: using hello-0
Dependency helloBackpack -any: using helloBackpack-0
Source component graph:
    component exe:hello-example
    component lib
Configured component graph:
    component helloUse-0-IyucxxcTZeiFXHyqipc6qd-hello-example
        include hello-0-CmjI7ZSeZJiD4texgyxWgH (TestHello as Hello.TestHello) requires (Hello as HelloStrHello)
        include hello-0-CmjI7ZSeZJiD4texgyxWgH (TestHello as World.TestHello) requires (Hello as WorldStrHello)
        include base-4.13.0.0
        include helloBackpack-0-EnQdfdsw04aCzzucMyzZZi
    component helloUse-0-6fHEVkJjJwiKAc1R7fotU1
        include base-4.13.0.0
        include hello-0-CmjI7ZSeZJiD4texgyxWgH
Linked component graph:
    unit helloUse-0-IyucxxcTZeiFXHyqipc6qd-hello-example
        include hello-0-CmjI7ZSeZJiD4texgyxWgH[Hello=helloBackpack-0-EnQdfdsw04aCzzucMyzZZi:HelloStrHello] (TestHello as Hello.TestHello)
        include hello-0-CmjI7ZSeZJiD4texgyxWgH[Hello=helloBackpack-0-EnQdfdsw04aCzzucMyzZZi:WorldStrHello] (TestHello as World.TestHello)
        include base-4.13.0.0
        include helloBackpack-0-EnQdfdsw04aCzzucMyzZZi
    unit helloUse-0-6fHEVkJjJwiKAc1R7fotU1[Hello=<Hello>]
        include base-4.13.0.0
        include hello-0-CmjI7ZSeZJiD4texgyxWgH[Hello=<Hello>]
Ready component graph:
    definite helloUse-0-IyucxxcTZeiFXHyqipc6qd-hello-example
        depends hello-0-CmjI7ZSeZJiD4texgyxWgH+AqdRXPxaDbd6lP4yQjvZcm
        depends hello-0-CmjI7ZSeZJiD4texgyxWgH+Lv7z3abdM6lG765jGDP6uj
        depends base-4.13.0.0
        depends helloBackpack-0-EnQdfdsw04aCzzucMyzZZi
    indefinite helloUse-0-6fHEVkJjJwiKAc1R7fotU1
        depends base-4.13.0.0
        depends hello-0-CmjI7ZSeZJiD4texgyxWgH
CallStack (from HasCallStack):
  dieNoWrap, called at libraries/Cabal/Cabal/Distribution/Utils/LogProgress.hs:61:9 in Cabal-3.0.0.0:Distribution.Utils.LogProgress
Error:
    The following packages are broken because other packages they depend on are missing. These broken packages must be rebuilt before they can be used.
planned package helloUse-0 is broken due to missing package hello-0-CmjI7ZSeZJiD4texgyxWgH+AqdRXPxaDbd6lP4yQjvZcm, hello-0-CmjI7ZSeZJiD4texgyxWgH+Lv7z3abdM6lG765jGDP6uj

builder for '/nix/store/iwv3knc60s6i3k0na9dda3w05yly4px8-helloUse-0.drv' failed with exit code 1
error: build of '/nix/store/iwv3knc60s6i3k0na9dda3w05yly4px8-helloUse-0.drv' failed
hask@LAPTOP-PQ3KPQAO:~/HelloWorld-backpack/backpack_example/helloDistributed$
