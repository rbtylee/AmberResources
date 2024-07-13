<!-- markdownlint-disable-line MD001 md041 -->[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/paypalme/rbtylee)

# AmberResources

A collection of [Amber Programming Language](https://amber-lang.com/) libraries and other resources.

Amber is under active development and is currently only in a beta release. All amber code in this repo has been tested on the latest Official Release. I expect some breakage with future releases. Please report any breakage issues you find. This is still a work in progress.

## Why Amber

> Amber is a next step in making the shell scripting more accessible and more maintainable. Its foundation is to solve the problems that couldn't be solved with just Bash and too clunky to use Bash library for.
>
> I think that it would lower the bar to enter Linux ecosystem and make is easier to organise and maintain scripts. Furthermore I believe that Amber will improve the developer experience when writing scripts that manage necessary workflows.
>
> For example developers with different shell scripting skill levels could operate on the same Amber project maintaining the readability and security by preventing many accidental bugs by keeping the shell code in the spotlight for code reviewers that is always contained between dollar symbols.
>
> Amber is meant to be portable, safe, modern, predictable and readable.
>
> - [Phoenix](https://github.com/Ph0enixKM/Amber/discussions/227)
>

## Prerequisites

- [Bash](https://www.gnu.org/software/bash/)
- [Amber](https://amber-lang.com/)

And whatever commands that are used in the amber libs or scripts.

## Cloning

[BATS](https://bats-core.readthedocs.io/en/stable/) is used for testing so after you clone this repo:

``` sh
git submodule init
git submodule update
```

### to run tests

``` sh
./test/bats/bin/bats test/
```

## Amber dpkg Library

### Functions

``` sh
deb_extract           deb_file
deb_extract_package   deb_file
deb_extract_package   deb_file
deb_list_pkg
deb_list_control
deb_list
deb_is_valid         deb_file
```

## Amber string Library

``` sh
capitalize
char_at
char_set
enerate_password
in_string
index_in_string
is_ascii
is_alnum
lpad
remove_puncation
repeat
reverse
rpad
sanitize
slice
squeeze
strip_html_tags
title
to_string
to_url
zfill
```

## Amber extract Library

``` sh
extract list of archives
```

## Reporting bugs

Please use the GitHub issue tracker for any bugs or feature suggestions:

> <https://github.com/rbtylee/AmberResources/issues>

## Contributing

Help is always Welcome, as with all Open Source Projects the more people that help the better it gets!
