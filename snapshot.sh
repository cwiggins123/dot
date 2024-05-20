#!/bin/bash
d="$(date +%Y.%m.%d-%H.%M.%S)"
echo "Backup started at ${d}"
time="@GMT_${d}"

# Mountpoint
mount="/mnt/pool/volumes/home"

## symlink to most recent snapshot
symlink="/mnt/pool/snapshots/home"
old_snap="$(readlink "/mnt/pool/snapshots/home")"

## New snapshot name
new_snap=${symlink}"_${time}"

## Check for most recent generation ID for most recent snapshot.
## This is used when looking for changed files.
if [[ -d "${old_snap}" ]]; then
        # find-new outputs last generation ID when using a too high value is used for comparing.
        gen_id=$(/sbin/btrfs sub find-new "${old_snap}" 9999999|cut -d " " -f 4)

        # Count changed files.
        count="$(/sbin/btrfs subvolume find-new "${mount}" ${gen_id} | cut -d " " -f 17-1000 | sed '/^$/d'| wc -l)"
        /sbin/btrfs subvolume find-new "${mount}" ${gen_id} | cut -d " " -f 17-1000
        # Create a new snapshot if files have changed.
        if [[ ${count} -gt 0 ]]; then
                /sbin/btrfs subvolume snapshot -r "${mount}" "${new_snap}"

                ## Recreate a symlink to the new snapshot
                rm "${symlink}" && ln -s "${new_snap}" "${symlink}"
        else
                echo "No files changed, skipping creating of a new snapshot"
        fi
else
        echo Something went wrong. Check that symlink $symlink points to a real snapshot
fi
echo "Backup finished at $(date +%Y.%m.%d-%H.%M.%S)"
