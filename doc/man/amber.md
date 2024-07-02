# NAME
     amber  - the programming language compiled to bash

# SYNOPSIS
    amber [OPTIONS] [AMBER_FILE] [OUTPUT]

# DESCRIPTION
       Amber is a high-level programming language designed to simplify scripting by compiling
       Bash scripts. It offers a clean syntax and powerful features, making it easier to
       write and maintain shell scripts.

# OPTIONS
        -e, --eval <EVAL>  Code to evaluate
        -h, --help         Print help
        -V, --version      Print version

# EXAMPLES

## Running
    The following line will simply execute file.ab as a script file. 
    Amber code will be compiled to a Bash script and then executed:

    ```
    amber file.ab
    ```

    If you want to run just a small expression, you do that as well. 
    Simply pass the -e (execute) flag to the command.

    ```
    amber -e 'echo upper("hello world!")'
    ```

    Notice that when executing a single expression, Amber automatically includes 
    its standard library for you. This can be really handy when all you want is 
    to use a function from Amber's standard library in the terminal.

## Compiling
    Sometimes you prefer just to compile amber code to a script 
    for example when dealing with cron jobs.

    ``` 
    amber input.ab output.sh
    ```

    You’ll notice that the compiled script is immediately callable; hence, there’s no
    need to add executable permissions using chmod, for instance. Amber grants the 
    permission automatically.

    Furthermore, Amber adds a shebang at the top of the compiled script. 
    This enables you to run the code simply without any additional commands.

    ```
    ./output.sh
    ```

# ENVIRONMENT
    Set AMBER_DEBUG_PARSER=1 to debug the parser itself (for compiler developers)

# RETURN VALUES
    0. Successful compilation.

    1. Compilation error or file not found

# ISSUES
    See GitHub issues: <https://github.com/Ph0enixKM/Amber/issues>

# LICENSE
    This software is licensed under the GPL3 license.

# AUTHOR
   Paweł Karaś <pkaras.it@gmail.com>

# SEE ALSO
    sh(1) bash(1) shellcheck(1)
