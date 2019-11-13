# How to generate the code?

## Requirements
You need to have a binary version of WrapC tool and be able to execute it form the library folder.

Before to regenerate the generated code, remove the folder `generated_wrapper`. If you are using geant, just run `geant clean` in other 
case remove it manually.

## Using WrapC with geant
$LIB_PATH is the path to the library folder where you checkout the libsod library.

### Wrap libsod library

Go to the $LIB_PATH/library

```
    geant wrap_c  -- Wrap C libsod library and generate the code under the folder generated_wrapper
```

### Compile the C library
 ```
    geant compile -- Build the C library, in this case generate the eif_libsod.lib
  ```

***
 
## Using WrapC without geant
  
$LIB_PATH is the path to the library folder where you checkout the libsod library.
At the moment the tool require --output-dir and --full-header to be full paths.
  
### Wrap libsod library  
  ```
    wrap_c --verbose --output-dir=$LIB_PATH/library/generated_wrapper --full-header=$LIB_PATH/library/C/include/sod.h config.xml
  ```

### Compile the C library
```
  cd generated_wrapper\c\src
  finish_freezing -library
```


### Compile Sod C library (sod.lib)
```
cd sod-1.1.8
finish_freezing -library
```

```
Copy sod.lib
C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib/sod.lib
```
To
```
library/C/lib
```
