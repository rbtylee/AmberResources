# amber 0.3.4-alpha

## Keywords

Here are the keywords in alphabetical order:

- and
- as
- break
- continue
- echo
- else
- fail
- failed
- from
- fun
- if
- import
- in
- is
- let
- loop
- main
- nameof
- not
- or
- pub
- ref
- return
- silent
- status
- then
- unsafe

## Amber Standard Library Functions

### Array Functions

1. `array_first_index(array, value)`
   - Returns the first index of `value` in `array`, or `-1` if not found.

2. `array_search(array, value)`
   - Returns a list of all indices where `value` is found in `array`.

3. `chars(text: Text): [Text]`
   - Returns a list of characters in the given `text`.

4. `includes(arr, value)`
   - Returns `true` if `value` is in `arr`, `false` otherwise.

5. `in_array(array, value): Bool`
   - Returns `true` if `value` is in `array`, `false` otherwise.

6. `join(list: [Text], delimiter: Text): Text`
   - Joins the elements of `list` into a single string with `delimiter`.

7. `split(text: Text, delimiter: Text): [Text]`
   - Splits `text` into a list of substrings separated by `delimiter`.

8. `sum(list: [Num]): Num`
   - Returns the sum of all numbers in `list`.

### Directory Functions

1. `create_dir(path: Text): Null`
   - Creates a directory at the given `path` if it doesn't exist.

2. `dir_exist(path)`
   - Checks if the directory at `path` exists.

### File Functions

1. `change_owner(user: Text, path: Text): Bool`
   - Changes the owner of the file or directory at `path` to `user`.

2. `create_symbolic_link(origin: Text, destination: Text): Bool`
   - Creates a symbolic link from `origin` to `destination`.

3. `download(url: Text, path: Text): Bool`
   - Downloads a file from `url` to `path` using available tools (curl, wget, or aria2c).

4. `file_append(path, content)`
    - Appends `content` to the file at `path`.

5. `file_exist(path)`
    - Checks if the file at `path` exists.

6. `file_read(path)`
    - Reads the content of the file at `path`.

7. `file_write(path, content)`
    - Writes `content` to the file at `path`.

8. `make_executable(path: Text): Bool`
    - Makes the file at `path` executable.

### Environment Functions

1. `get_env_var(var: Text): Text`
    - Returns the value of the environment variable `var`.

2. `load_env_file(): Null`
    - Loads environment variables from a `.env` file.

### Shell Functions

1. `has_failed(command: Text): Bool`
    - Executes `command` and returns `true` if it fails, `false` otherwise.

2. `is_command(command: Text): Bool`
    - Checks if `command` is available on the system.

3. `is_root(): Bool`
    - Returns `true` if the current user is root, `false` otherwise.

4. `shell_constant_get(name: Text): Text`
    - Gets the value of a shell constant.

5. `shell_constant_set(name: Text, val: Text): Null`
    - Sets a shell constant `name` to `val`.

6. `shell_isset(name: Text): Bool`
    - Checks if a shell variable `name` is set.

7. `shell_unset(name: Text): Null`
    - Unsets a shell variable `name`.

8. `shell_var_get(name: Text): Text`
    - Gets the value of a shell variable `name`.

9. `shell_var_set(name: Text, val: Text): Null`
    - Sets a shell variable `name` to `val`.

### Input/Output Functions

1. `input(prompt: Text): Text`
    - Prompts the user with `prompt` and returns the input.

2. `exit(code: Num): Null`
    - Exits the program with the given exit `code`.

### String Functions

1. `chars(text: Text): [Text]`
   - Returns a list of characters in the given `text`.

2. `lines(text: Text): [Text]`
    - Splits `text` into lines and returns them as a list.

3. `lower(text: Text): Text`
    - Converts `text` to lowercase.

4. `replace(source, pattern, replacement)`
    - Replaces all occurrences of `pattern` with `replacement` in `source`.

5. `replace_once(source, pattern, replacement)`
    - Replaces the first occurrence of `pattern` with `replacement` in `source`.

6. `replace_regex(source: Text, pattern: Text, replacement: Text): Text`
    - Replaces all occurrences of `pattern` with `replacement` in `source` using regex.

7. `trim(text: Text): Text`
    - Trims whitespace from both ends of `text`.

8. `trim_left(text: Text): Text`
    - Trims whitespace from the left end of `text`.

9. `trim_right(text: Text): Text`
    - Trims whitespace from the right end of `text`.

10. `upper(text: Text): Text`
    - Converts `text` to uppercase.

11. `words(text: Text): [Text]`
    - Splits `text` into a list of words.

### Utility Functions

1. `len(value): Num`
    - Returns the length of `value`, whether it's a string or an array.

2. `parse(text: Text): Num`
    - Parses `text` as a number.

Here is a list of all the functions in std lib along with a short description for each:

1. `array_first_index(array, value)`
   - Returns the first index of `value` in `array`, or `-1` if not found.

2. `array_search(array, value)`
   - Returns a list of all indices where `value` is found in `array`.

3. `change_owner(user: Text, path: Text): Bool`
   - Changes the owner of the file or directory at `path` to `user`.

4. `chars(text: Text): [Text]`
   - Returns a list of characters in the given `text`.

5. `create_dir(path: Text): Null`
   - Creates a directory at the given `path` if it doesn't exist.

6. `create_symbolic_link(origin: Text, destination: Text): Bool`
   - Creates a symbolic link from `origin` to `destination`.

7. `dir_exist(path)`
   - Checks if the directory at `path` exists.

8. `download(url: Text, path: Text): Bool`
   - Downloads a file from `url` to `path` using available tools (curl, wget, or aria2c).

9. `exit(code: Num): Null`
   - Exits the program with the given exit `code`.

10. `file_append(path, content)`
    - Appends `content` to the file at `path`.

11. `file_exist(path)`
    - Checks if the file at `path` exists.

12. `file_read(path)`
    - Reads the content of the file at `path`.

13. `file_write(path, content)`
    - Writes `content` to the file at `path`.

14. `get_env_var(var: Text): Text`
    - Returns the value of the environment variable `var`.

15. `has_failed(command: Text): Bool`
    - Executes `command` and returns `true` if it fails, `false` otherwise.

16. `includes(arr, value)`
    - Returns `true` if `value` is in `arr`, `false` otherwise.

17. `in_array(array, value): Bool`
    - Returns `true` if `value` is in `array`, `false` otherwise.

18. `input(prompt: Text): Text`
    - Prompts the user with `prompt` and returns the input.

19. `is_command(command: Text): Bool`
    - Checks if `command` is available on the system.

20. `is_root(): Bool`
    - Returns `true` if the current user is root, `false` otherwise.

21. `join(list: [Text], delimiter: Text): Text`
    - Joins the elements of `list` into a single string with `delimiter`.

22. `len(value): Num`
    - Returns the length of `value`, whether it's a string or an array.

23. `lines(text: Text): [Text]`
    - Splits `text` into lines and returns them as a list.

24. `load_env_file(): Null`
    - Loads environment variables from a `.env` file.

25. `lower(text: Text): Text`
    - Converts `text` to lowercase.

26. `make_executable(path: Text): Bool`
    - Makes the file at `path` executable.

27. `parse(text: Text): Num`
    - Parses `text` as a number.

28. `replace(source, pattern, replacement)`
    - Replaces all occurrences of `pattern` with `replacement` in `source`.

29. `replace_once(source, pattern, replacement)`
    - Replaces the first occurrence of `pattern` with `replacement` in `source`.

30. `replace_regex(source: Text, pattern: Text, replacement: Text): Text`
    - Replaces all occurrences of `pattern` with `replacement` in `source` using regex.

31. `shell_constant_get(name: Text): Text`
    - Gets the value of a shell constant.

32. `shell_constant_set(name: Text, val: Text): Null`
    - Sets a shell constant `name` to `val`.

33. `shell_isset(name: Text): Bool`
    - Checks if a shell variable `name` is set.

34. `shell_unset(name: Text): Null`
    - Unsets a shell variable `name`.

35. `shell_var_get(name: Text): Text`
    - Gets the value of a shell variable `name`.

36. `shell_var_set(name: Text, val: Text): Null`
    - Sets a shell variable `name` to `val`.

37. `split(text: Text, delimiter: Text): [Text]`
    - Splits `text` into a list of substrings separated by `delimiter`.

38. `sum(list: [Num]): Num`
    - Returns the sum of all numbers in `list`.

39. `trim(text: Text): Text`
    - Trims whitespace from both ends of `text`.

40. `trim_left(text: Text): Text`
    - Trims whitespace from the left end of `text`.

41. `trim_right(text: Text): Text`
    - Trims whitespace from the right end of `text`.

42. `upper(text: Text): Text`
    - Converts `text` to uppercase.

43. `words(text: Text): [Text]`
    - Splits `text` into a list of words.
