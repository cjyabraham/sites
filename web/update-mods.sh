# SPDX-License-Identifier: MIT
# Copyright (c) "2023" . The DeepCausality Authors. All Rights Reserved.

# bin/bash
set -o errexit
set -o nounset
set -o pipefail

# Ensure that were have the latest version
git pull origin

# https://stackoverflow.com/questions/18770545/why-is-my-git-submodule-head-detached-from-master
echo "Good Day Friend, building all submodules while checking out from MAIN branch."

# Force reset
git submodule update --force --recursive --init --remote

git submodule foreach git checkout --force main
git submodule foreach git pull origin main