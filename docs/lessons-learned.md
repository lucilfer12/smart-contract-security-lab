# Lessons Learned

## Pattern is not proof
A known vulnerability pattern matters only after reachability and impact are established.

## Deployment matters
An insecure function that is not deployed, initialized, or wired into an active market may have no practical impact.

## Privilege matters
If exploitation requires a privileged role, document that requirement and distinguish accidental misuse from malicious privilege abuse.

## PoCs matter
A reproducible local test turns a theoretical claim into an observable security property.

## Numbers matter
Validate decimals, units, caps, and rounding before estimating loss.

## Fixes should encode invariants
A good patch protects the intended invariant rather than merely making one test pass.
