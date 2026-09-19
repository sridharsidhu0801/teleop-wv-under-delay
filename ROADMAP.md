# Roadmap

## Phase 1 - Inventory and reconstruction

- [x] Establish the independent ResearchOS skeleton.
- [x] Inventory all 196 legacy files.
- [x] Identify generated caches and Simulink build products.
- [x] Reconstruct the three controller configurations and three delay cases.
- [x] Confirm the final manuscript and preserve the LaTeX project.
- [x] Select the README hardware image.

## Phase 2 - Evidence-preserving migration

- [x] Create the canonical experiment directory.
- [x] Copy MATLAB, Simulink, ROS support, figures, and research records.
- [x] Copy the manuscript history and LaTeX project.
- [x] Separate active, reproduction, lineage, and generated artifacts.
- [x] Verify every copied legacy file using SHA-256.
- [x] Leave the legacy source unchanged.

## Phase 3 - Reproduction

- [x] Load the compatible Simulink models safely in MATLAB R2024b without simulation.
- [ ] Resolve and document the intended delay values and units.
- [ ] Validate the original/non-passive ROS controller configuration in a prepared hardware or isolated ROS session.
- [ ] Validate the passive wave-variable ROS controller configuration in a prepared hardware or isolated ROS session.
- [ ] Validate the predictor ROS controller configuration in a prepared hardware or isolated ROS session.
- [x] Complete an offline one-second smoke simulation of the reproduction model.
- [ ] Run the full reproduction model and compare outputs with the retained publication figures.
- [ ] Record ROS, toolbox, cockpit, vehicle, and safety prerequisites.

## Phase 4 - Git publication

- [ ] Complete the pre-Git file, credential, and large-file audit.
- [ ] Decide which provenance documents remain local only.
- [ ] Initialize Git after runtime validation.
- [ ] Create focused project-evolution commits.
- [ ] Create private personal and laboratory repositories.
- [ ] Push only after explicit approval and verify independent recovery clones.
