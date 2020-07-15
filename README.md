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