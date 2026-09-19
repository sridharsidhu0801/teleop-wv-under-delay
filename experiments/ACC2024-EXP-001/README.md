# ACC2024-EXP-001

This experiment preserves the software and evidence associated with the ACC 2024 delayed-teleoperation study.

## Controller models

| Configuration | Model | Status |
|---|---|---|
| Original/non-passive ROS teleoperation | `models/hardware/non_passive_Delay.slx` | Canonical R2024b configuration |
| Passive wave-variable ROS teleoperation | `models/hardware/passive_delay_corrected_2024b.slx` | Canonical R2024b configuration exported from R2025a |
| Passive wave-variable teleoperation with predictors | `models/hardware/smith_pre.slx` | Canonical R2024b configuration |
| Later comparison/reproduction | `models/reproduction/teleop_acc_repro.slx` | Development/reproduction only |

## Initialization

- `initialization/Run_file_F1tenth.m` defines vehicle and delay-related workspace values.
- `initialization/params.m` defines additional model parameters but also calls `rosshutdown` and `rosinit` when executed.

Do not run `params.m` merely to inspect parameters. It changes the ROS session. Do not run any hardware model until cockpit, vehicle, topic routing, command limits, and emergency stopping have been checked.

## Delay cases

The paper reports no imposed delay, 500 ms imposed delay, and 1 s imposed delay. The current initialization comments are contradictory and must not be used as the sole authority for setting `delay`. A controlled validation should use a disposable experiment copy and explicitly record the value, units, model, ROS state, generated outputs, and vehicle connection state.

## Expected ROS topics

- `/racing_cockpit/ctrl_cmd`
- `/adaptive_response`

## Evidence

- `figures/final/` contains retained publication-ready figures and plots.
- `figures/draft/` contains earlier figures and plots.
- Model lineage and generated caches are stored under the repository-level `archive/` directory.
