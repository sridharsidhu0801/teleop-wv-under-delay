# Project

## Objective

Preserve, reproduce, and extend the ACC 2024 study of passive stability and predictor-assisted control for teleoperation under communication delay.

## Scientific scope

- Bilateral teleoperation under natural and imposed communication delays
- Passivity through wave-variable transformations
- Smith prediction at the operator side
- Minimum-jerk prediction at the remote side
- Simulation and human-in-the-loop validation using ROS and an F1/10 platform

## Publication

- Title: *Passive Stability and Adaptive Control of Teleoperated System using Wave Variables and Predictor Techniques*
- Venue: American Control Conference 2024
- Status: Published
- IEEE document number: 10644849

## Canonical environment

- MATLAB R2024b Update 6 used for the read-only migration audit
- Simulink
- ROS Toolbox

## Canonical experiment

`experiments/ACC2024-EXP-001` contains the active initialization files, the three R2024b controller models, generated ROS support, and the publication figures.

The active controller models are:

- `non_passive_Delay.slx`: original/non-passive ROS configuration
- `passive_delay_corrected_2024b.slx`: passive wave-variable ROS configuration
- `smith_pre.slx`: passive wave-variable configuration with Smith/MJ prediction

`teleop_acc_repro.slx` is retained as a later non-ROS reproduction model. R2025a models, previous-version exports, original backups, and generated Simulink caches are preserved under `archive/`.

## Known uncertainty

`Run_file_F1tenth.m` assigns `delay = 10` beside a comment that labels it as the no-delay case, while a commented `delay = 0` line is labeled as delay. Migration preserves this evidence unchanged. Runtime validation must establish the intended units and case settings before correcting documentation or code.

## Repository policy

- Keep executable experiments self-contained.
- Preserve original MATLAB and Simulink filenames during reproducibility work.
- Never present generated caches or superseded model versions as canonical code.
- Keep the hardware-launch repository as an external dependency.
- Preserve the LaTeX project and manuscript history under `papers/`.
- Preserve migration provenance under `docs/` until publication policy is decided.
- Do not delete or modify the retained F: legacy source as part of this migration.
