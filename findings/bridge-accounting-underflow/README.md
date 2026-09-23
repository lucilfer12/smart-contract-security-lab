# Bridge Accounting Underflow

## Root cause

The vulnerable path subtracts an inbound amount from an outstanding accounting balance without proving:

`amountReceived <= totalBridgedOut_before`

Under Solidity 0.8+, an oversized subtraction reverts.

## Security invariant

Every successful credit must satisfy:

`amountReceived <= totalBridgedOut_before`

## Why it matters

If a real bridge depends on this transition to finalize an inbound transfer, a panic can block state progression. Actual impact depends on message retry semantics, custody, and recovery mechanisms.

## Reproduction

```bash
forge test -vv
```

The test suite demonstrates the arithmetic failure and the guarded implementation.

## Defensive pattern

Validate the accounting relationship before subtraction and define a recovery path for inconsistent cross-chain state.
