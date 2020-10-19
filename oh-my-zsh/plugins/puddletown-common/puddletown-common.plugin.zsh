# Common package upgrades

# c-c-ca-ca-cat!
alias cat='ccat'

# To the Desktop!
alias dt='cd ~/Desktop'

# echo date-time
alias now='date +"%m-%d-%y %H:%M:%S %z"'

# web search ddg|gs
alias gs="google"

# rSync command
# z - compress
# a - archive (rlptgoD)
# P - progress and partial (allows resuming aborted syncs)
# v - verbose
# l - copy symlinks as links
# h - human readable
# -  a
# # n - dry run
#
# -r, --recursive - counterpart to archive
# -l, --links      # copy symlinks as links
# -p, --perms      # preserve permissions
# -t, --times      # preserve times
# -g, --group      # preserve group
# -o, --owner      # preserve owner
# -D               # --devices --specials

# Archive - copies the files exactly, times, permissions owners
# Sync - does not copy the owner, groups or permissions. DOES copy times,
# Merge - doesn't delete files not in origin only adds to files
# Mirror - deletes files not found in origin, keeps both directories in sync

# Archives
# Preserves permissions and all file data
alias rsync-merge-archive="rsync -zaPvh --stats" # Archive Merge, preserves permissions, copies and does not delete orphans
alias rsync-merge-archive-dry-run="rsync -zaPvhn --stats"  # Archive Merge, preserves permissions, copies and does not delete orphans

alias rsync-mirror-archive="rsync -zaPvh --stats --delete" # Mirror Merge DOES Delete orphans, preserves permissions, copies
alias rsync-mirror-archive-dry-run="rsync -zaPvhn --stats --delete" # Mirror Merge DOES Delete orphans, preserves permissions, copies

#  Syncs
# ## Doesn't preserve permissions
alias rsync merge-sync="rsync -rzPvhltD --stats" # Archive Merge, preserves permissions, copies and does not delete orphans
alias rsync-merge-sync-dry-run="rsync -rzPvhltDn --stats"  # Archive Merge, preserves permissions, copies and does not delete orphans

alias rsync-mirror-sync="rsync -rzPvhltD --stats --delete" # Mirror Merge DOES Delete orphans, DOES NOT preserves permissions, copies
alias rsync-mirror-sync-dry-run="rsync -rzPvhltDn --stats --delete" # Mirror Merge DOES Delete orphans, DOES NOT preserves permissions, copies
