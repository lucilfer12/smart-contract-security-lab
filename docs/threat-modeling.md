# Threat Modeling

For every lab define:

### Assets
What can be stolen, frozen, corrupted, or made unavailable?

### Actors
Untrusted user, authenticated user, relayer, operator, governance, emergency administrator.

### Trust boundaries
Mark transitions between contracts, chains, and privileged domains.

### Attacker capabilities
State exactly what the attacker controls and cannot control.

### Failure modes
Arithmetic failure, stale state, unauthorized mutation, inconsistent cross-chain state, oracle inconsistency, irreversible configuration.

### Recovery
Can the protocol retry, unwind, pause, or repair the affected state?
