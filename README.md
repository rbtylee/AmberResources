[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/paypalme/rbtylee)

# AmberResources
A collection of [Amber Programming Language](https://amber-lang.com/) libraries and other resources.

This is still a work in progress. 

## Cloning

BATS is used for testing so after you clone this repo:

```
git submodule init
git submodule update
```
### to run tests:

```
./test/bats/bin/bats test/test.bats
```

## amber dpkg library


### Functions

```
deb_extract           deb_file
deb_extract_package   deb_file
deb_extract_package   deb_file
deb_list_pkg
deb_list_control
deb_list
deb_is_valid         deb_file
```
