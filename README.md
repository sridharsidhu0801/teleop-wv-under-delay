# Teleoperation with Wave Variables under Communication Delay

Research repository for passive stability and predictor-assisted control of delayed bilateral teleoperation. The project combines wave-variable passivation with Smith and minimum-jerk prediction and was validated using MATLAB/Simulink, ROS, a human-operated driving cockpit, and an F1/10 vehicle.

![F1/10 teleoperation hardware setup](hardware/teleop_fltenth_pic.png)

## Publication

- Paper: *Passive Stability and Adaptive Control of Teleoperated System using Wave Variables and Predictor Techniques*
- Venue: American Control Conference 2024
- Status: Published
- [IEEE Xplore publication](https://ieeexplore.ieee.org/document/10644849)
- Final submitted manuscript: [`papers/ACC2024/manuscripts/ACC2024_finalsubmission.pdf`](papers/ACC2024/manuscripts/ACC2024_finalsubmission.pdf)

## Experimental design

The published study compares three controller configurations under three communication-delay conditions.

Controller configurations:

1. Original/non-passive teleoperation
2. Passive teleoperation using wave variables
3. Passive wave-variable teleoperation with Smith and minimum-jerk prediction

Delay conditions:

1. No imposed delay
2. 500 ms imposed delay
3. 1 s imposed delay

The delay conditions are parameter settings, not four independent Simulink models.

## Canonical software and entry points

- MATLAB R2024b
- Simulink
- ROS Toolbox
- Initialization: [`Run_file_F1tenth.m`](experiments/ACC2024-EXP-001/initialization/Run_file_F1tenth.m)
- Parameters: [`params.m`](experiments/ACC2024-EXP-001/initialization/params.m)
- Original/non-passive model: [`non_passive_Delay.slx`](experiments/ACC2024-EXP-001/models/hardware/non_passive_Delay.slx)
- Passive wave-variable model: [`passive_delay_corrected_2024b.slx`](experiments/ACC2024-EXP-001/models/hardware/passive_delay_corrected_2024b.slx)
- Predictor model: [`smith_pre.slx`](experiments/ACC2024-EXP-001/models/hardware/smith_pre.slx)

The current initialization file contains contradictory comments around the `delay` assignment. Consult the experiment README and provenance record before changing or executing that parameter.

## Hardware dependency

The laboratory repository [F1-10-human-racing](https://github.com/resilient-autonomous-systems-lab/F1-10-human-racing) contains supporting launch information for the F1/10 hardware. It remains an external dependency and is not duplicated here.

The active Simulink models publish and subscribe to ROS topics including `/racing_cockpit/ctrl_cmd` and `/adaptive_response`. Do not start a hardware run until ROS, the cockpit, vehicle safety limits, and emergency-stop procedures have been checked.

## Repository organization

```text
experiments/ACC2024-EXP-001/  Self-contained active experiment
hardware/                     Hardware overview and documentation
papers/ACC2024/               Manuscripts, LaTeX project, and presentations
development/                  Draft research material
references/                   Supporting literature
archive/                      Model lineage, caches, meetings, and legacy records
theory/                       Active theoretical material
```

Generated figures stay with the experiment that produced them. Superseded models and Simulink build products are preserved under `archive/` and are not canonical run targets.

## Validation status

- The three R2024b controller configurations have been identified and load successfully.
- The non-ROS reproduction model passes a one-second MATLAB R2024b smoke simulation.
- The inherited reproduction model contains one documented algebraic loop.
- ROS hardware execution and comparison with the published figures remain pending.
