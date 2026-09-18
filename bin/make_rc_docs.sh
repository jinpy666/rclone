#!/usr/bin/env bash
# dbx fork patch: rcdocs requires a real FUSE mount, which CI runners cannot
# provide (macfuse kext not loaded, no /dev/fuse on linux containers, WinFsp
# mountpoint semantics differ). Skip regeneration and keep the committed
# docs/content/rc.md, which matches the upstream release this branch is cut
# from. Only the zip README/rclone.1 artifacts consume these docs.
echo "make_rc_docs.sh: skipped in dbx fork (no FUSE on CI); using committed rc.md"
