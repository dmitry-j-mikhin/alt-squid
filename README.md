# alt-squid

This repository is used to build squid 6.6 for Alt P10.
Alt P10 now use 6.5, that has known bug - https://bugs.squid-cache.org/show_bug.cgi?id=5318.

Assembly steps:
```Shell
./build.sh
```
As a result, an `out` folder with build artifacts is created.
Compiled rpm packages are also located here - [https://github.com/dmitry-j-mikhin/alt-squid/releases/tag/v1.0](https://github.com/dmitry-j-mikhin/alt-squid/releases/tag/v1.0).
