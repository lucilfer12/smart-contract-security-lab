# Access-Control Invariants

A security review should ask:

1. Who can call the function?
2. What state can that caller change?
3. Which invariant must remain true?
4. Can an authorized caller accidentally create an irreversible state?

## Checklist

- Trace every privileged role.
- Check role assignment and revocation.
- Review initialization and zero-address paths.
- Check whether sensitive configuration is mutable after deployment.
- Look for irreversible states.
- Test unauthorized and authorized-but-dangerous transitions.
