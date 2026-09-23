# Security Research Methodology

## 1. Understand the state machine
Map storage variables, transitions, privileged actors, external calls, and failure paths.

## 2. Write the invariant
Examples: accounting cannot become negative; sensitive configuration has explicit authorization; successful credit has valid backing; recovery paths remain reachable.

## 3. Prove reachability
Verify deployment, initialization, configuration, roles, and the exact state needed for the bug.

## 4. Prove exploitability
Identify the concrete caller, preconditions, attacker-controlled input, and state transition.

## 5. Quantify impact
Account for decimals, caps, rounding, liquidity, retry behavior, and recovery.

## 6. Reproduce locally
Prefer deterministic Foundry tests.

## 7. Add regression tests
Encode the security invariant so future changes cannot silently reintroduce the issue.

## 8. Respect scope
A technically valid pattern can still be irrelevant when the affected component is inactive, unreachable, unconfigured, or outside deployment scope.
