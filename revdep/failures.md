# rangeMapper

<details>

* Version: 2.0.3
* GitHub: https://github.com/mpio-be/rangeMapper
* Source code: https://github.com/cran/rangeMapper
* Date/Publication: 2022-10-03 22:20:02 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::revdep_details(, "rangeMapper")` for more info

</details>

## In both

*   checking whether package ‘rangeMapper’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/revdep/future.apply/checks/rangeMapper/new/rangeMapper.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘rangeMapper’ ...
** this is package ‘rangeMapper’ version ‘2.0.3’
** package ‘rangeMapper’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘terra’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘rangeMapper’
* removing ‘/scratch/henrik/revdep/future.apply/checks/rangeMapper/new/rangeMapper.Rcheck/rangeMapper’


```
### CRAN

```
* installing *source* package ‘rangeMapper’ ...
** this is package ‘rangeMapper’ version ‘2.0.3’
** package ‘rangeMapper’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘terra’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘rangeMapper’
* removing ‘/scratch/henrik/revdep/future.apply/checks/rangeMapper/old/rangeMapper.Rcheck/rangeMapper’


```
# steps

<details>

* Version: 1.3.0
* GitHub: https://github.com/steps-dev/steps
* Source code: https://github.com/cran/steps
* Date/Publication: 2022-10-04 23:30:02 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::revdep_details(, "steps")` for more info

</details>

## In both

*   checking whether package ‘steps’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/revdep/future.apply/checks/steps/new/steps.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘steps’ ...
** this is package ‘steps’ version ‘1.3.0’
** package ‘steps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c rcpp_dispersal_funs_v4.cpp -o rcpp_dispersal_funs_v4.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c rcpp_utils_funs.cpp -o rcpp_utils_funs.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/lib -L/usr/local/lib64 -o steps.so RcppExports.o rcpp_dispersal_funs_v4.o rcpp_utils_funs.o -L/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/lib -lR
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘terra’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘steps’
* removing ‘/scratch/henrik/revdep/future.apply/checks/steps/new/steps.Rcheck/steps’


```
### CRAN

```
* installing *source* package ‘steps’ ...
** this is package ‘steps’ version ‘1.3.0’
** package ‘steps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c rcpp_dispersal_funs_v4.cpp -o rcpp_dispersal_funs_v4.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG  -I'/scratch/henrik/revdep/future.apply/library/steps/Rcpp/include' -I/usr/local/include    -fpic  -g -O2   -c rcpp_utils_funs.cpp -o rcpp_utils_funs.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/lib -L/usr/local/lib64 -o steps.so RcppExports.o rcpp_dispersal_funs_v4.o rcpp_utils_funs.o -L/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/lib -lR
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘terra’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘steps’
* removing ‘/scratch/henrik/revdep/future.apply/checks/steps/old/steps.Rcheck/steps’


```
# XNAString

<details>

* Version: 1.15.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "XNAString")` for more info

</details>

## In both

*   checking whether package ‘XNAString’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/scratch/henrik/revdep/future.apply/checks/XNAString/new/XNAString.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘XNAString’ ...
** this is package ‘XNAString’ version ‘1.15.0’
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/new/XNAString.Rcheck/XNAString’


```
### CRAN

```
* installing *source* package ‘XNAString’ ...
** this is package ‘XNAString’ version ‘1.15.0’
** using staged installation
** libs
using C++ compiler: ‘g++ (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
using C++11
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/cpu.c -o ViennaRNA/utils/cpu.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/msa_utils.c -o ViennaRNA/utils/msa_utils.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/structure_tree.c -o ViennaRNA/utils/structure_tree.o
gcc -std=gnu2x -I"/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/include" -DNDEBUG -Dlibcaf_core_shared_EXPORTS -I../src -I../src -I'/scratch/henrik/revdep/future.apply/library/XNAString/Rcpp/include' -I/usr/local/include    -fpic  -g -O2  -c ViennaRNA/utils/higher_order_functions.c -o ViennaRNA/utils/higher_order_functions.o
...
      |      ^~~~~~~~
ViennaRNA/datastructures/lists.c:284:1: error: conflicting types for ‘lst_mergesort’; have ‘void(LIST *, int (*)(void *, void *))’
  284 | lst_mergesort (LIST * l, int (*cmp_func) (void *, void *))
      | ^~~~~~~~~~~~~
../src/ViennaRNA/datastructures/lists.h:63:6: note: previous declaration of ‘lst_mergesort’ with type ‘void(LIST *, int (*)(void))’
   63 | void lst_mergesort (LIST * l, int (*cmp_func) ());
      |      ^~~~~~~~~~~~~
make: *** [/software/c4/cbi/software/_rocky8/R-4.5.0-gcc13/lib64/R/etc/Makeconf:202: ViennaRNA/datastructures/lists.o] Error 1
ERROR: compilation failed for package ‘XNAString’
* removing ‘/scratch/henrik/revdep/future.apply/checks/XNAString/old/XNAString.Rcheck/XNAString’


```
