# DeFi Accounting and Rounding

Numerical correctness is part of security.

For every monetary calculation document:

- token decimals
- internal units
- rounding direction
- maximum rounding error
- residual recipient
- whether repetition can accumulate the error

A literal `10` is not automatically 10 USDC or 10 dollars. Its economic value depends on the unit.

## Review method

1. Convert constants to base units.
2. Track precision at every arithmetic step.
3. Calculate maximum cumulative error.
4. Determine whether an attacker can profit from repetition.
5. Separate dust from economically material loss.
