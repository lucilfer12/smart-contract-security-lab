# Smart Contract Security Lab

Educational Web3 security laboratory focused on Solidity, DeFi accounting, bridge security, access control, oracle risks, exploit reproduction, and invariant testing.

## Research model

**Code pattern → Reachability → Exploitability → Impact → Reproducibility**

A dangerous-looking pattern is not automatically a practical vulnerability. Each lab separates the vulnerable mechanism from deployment assumptions, privilege requirements, reachable state, and measurable impact.

## Labs

- **Bridge accounting** — Solidity 0.8 arithmetic failure and accounting invariants
- **Access control** — authorization boundaries and irreversible state transitions
- **DeFi rounding** — decimals, units, precision, and economic materiality
- **Oracle safety** — external-read consistency assumptions and defensive patterns

## Tooling

Solidity · Foundry · EVM · Git · GitHub · invariant testing

## Repository structure

```text
src/          Vulnerable and fixed contracts
test/         Reproducible Foundry tests
findings/     Technical case studies
docs/         Methodology and threat modeling
```

All examples are intentionally self-contained and educational. They are not instructions to attack live systems or reproductions of private vulnerability reports.

## Author

**lucilfer12** — Web3 security research
