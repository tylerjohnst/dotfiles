dotfiles but for Codespaces!

(Mac dotfiles are in the `mac` branch.)

## VS Code File Refresh

When using terminal tools like Copilot CLI that modify files on disk, VS Code's
file explorer may not immediately reflect those changes. The `vscode-file-refresh`
script watches for file system changes and notifies VS Code to refresh.

**It starts automatically** on codespace start via `codespaces-post-start`.

Manual control:
```sh
vscode-file-refresh start    # Start the watcher daemon
vscode-file-refresh stop     # Stop the watcher daemon
vscode-file-refresh status   # Check if the watcher is running
vr status                    # Short alias
```

Environment variables:
- `VSCODE_REFRESH_WATCH_DIR` — Directory to watch (default: `/workspaces`)
- `VSCODE_REFRESH_DEBOUNCE` — Seconds between notifications for the same file (default: `1`)
