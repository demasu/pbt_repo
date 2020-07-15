Examples of property based testing in various languages
========================================================

# Languages

## Languages with examples:
- perl

## TODO
- c++
- java
- go
- python

# Results

## perl
- Passing PBT test
  - ```
    1..3
    ok 1 - 'When I add two numbers the result should not rely on the order of the numbers' (1000 attempts)
    ok 2 - 'Adding 1 twice is the same as adding 2 once' (1000 attempts)
    ok 3 - 'Adding 0 is the same as doing nothing' (1000 attempts)
    ```
- Failing PBT test
  - ```
    1..3
    not ok 1 - 'When I add two numbers the result should not rely on the order of the numbers' falsified in 35 attempts
    # Counterexample:
    # $a = 3;
    # $b = 2;
    ok 2 - 'Adding 1 twice is the same as adding 2 once' (1000 attempts)
    not ok 3 - 'Adding 0 is the same as doing nothing' falsified in 1 attempts
    # Counterexample:
    # $a = 0;
    # $b = 1;
    ```
## C++
- Passing PBT test
  - ```
    When I add two numbers the result should not rely on the order the numbers are given
    OK, passed 1000 tests.
    Adding 1 twice is the same as adding 2 once
    OK, passed 1000 tests.
    Adding 0 is the same as doing nothing
    OK, passed 1000 tests.
    ```
- Failing PBT test
  - ```
    The random number generator this uses is flawed and so this one doesn't fail when it should
    When I add two numbers the result should not rely on the order the numbers are given
    OK, passed 1000 tests.
    Adding 1 twice is the same as adding 2 once
    OK, passed 1000 tests.
    Adding 0 is the same as doing nothing
    Falsifiable after 1 tests for input:
    0: -1
    ```