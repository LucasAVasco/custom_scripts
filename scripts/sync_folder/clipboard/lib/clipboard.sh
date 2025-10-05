#!/bin/bash
#
# Library to sync the clipboard between users.

current_dir=$(dirname `realpath "${BASH_SOURCE[0]}"`)
top_dir=$(dirname "$current_dir")

source "$top_dir/../lib/sync_folder.sh"

# Fifo used to sync the clipboard
clipboard_fifo="$SYNC_FOLDER/clipboard.fifo"

# Send the clipboard to the sync folder.
sync_clipboard_send() {
	if [[ -e "$clipboard_fifo" ]]; then
		rm "$clipboard_fifo"
	fi

	# Remove the fifo on exit
	trap "rm '$clipboard_fifo'" EXIT

	# Create the fifo
	mkfifo "$clipboard_fifo"
	chmod g=r "$clipboard_fifo"

	# Send the clipboard
	local content=$(clip-paste)
	printf "%s" "$content" > "$clipboard_fifo"
}

# Receive the clipboard from the sync folder.
sync_clipboard_receive() {
	local content=$(cat "$clipboard_fifo")
	printf "%s" "$content" | clip-copy
}
