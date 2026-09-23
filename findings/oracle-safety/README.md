# Oracle Safety

External-state assumptions should be explicit.

Review:

- where the price/value comes from
- whether the read is fresh and consistent
- whether a state-changing path depends on a transient external value
- whether stale or inconsistent data can create bad accounting
- whether fallback and recovery paths exist

This lab intentionally keeps the model simple so the review questions remain visible.
