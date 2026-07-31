# keroro-search

A fast, terminal-first YouTube client built with `bash`, `fzf`, `yt-dlp`, and `mpv`. Search for videos, playlists, or channels, browse subscription feeds, and stream content with inline thumbnail previews right inside your terminal.

<img width="1024" height="1024" alt="keroro-watch" src="https://github.com/user-attachments/assets/5f503453-e7c8-488a-91c4-caa7a4ba24eb" />

## Features

- **Terminal Thumbnail Previews**: Live image previews using `ueberzugpp`, `kitty` icat, `ueberzug`, or `chafa`.
- **Search Videos, Playlists & Channels**: Search YouTube for videos (with duration filters and sort options), playlists, or specific channels.
- **Hardware-Friendly Playback**: Uses `mpv` and `yt-dlp` tuned for hardware acceleration (prefers VP9 and AVC/H.264 streams, avoiding CPU-heavy AV1 decoding).
- **Stream Quality Control**: Select resolution limits (1080p, 720p, 480p, 360p, 144p) or audio-only mode.
- **Channel & Feed Browsing**: Browse uploads from your favorite channels or local subscription feeds.
- **Offline History & Favorites**: Local watch history, search history, and liked videos stored without needing a Google / YouTube API key.

## Requirements

You'll need the following installed:

* **`bash`** (v4.2+)
* **`fzf`**
* **`yt-dlp`**
* **`mpv`**
* **`jq`**
* **`curl`**

### Image Preview Backend (Optional)
To render thumbnails in your terminal, install one of these:
* **`ueberzugpp`** (recommended for most terminal emulators)
* **`kitty`** (if using Kitty terminal)
* **`chafa`** (symbol/character preview fallback)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ahloiscreamo/keroro-search.git
   cd keroro-search
   ```

2. Run the install script:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

What `install.sh` does:
- Copies `keroro-search.sh` as `~/.local/bin/keroro-search`
- Installs UI thumbnail assets into `~/.local/share/keroro-search/png/` and `~/.local/share/keroro-search/menu/`
- Creates default config at `~/.config/keroro-search/keroro-search.conf` if not already present

## Usage

Run:
```bash
keroro-search
```

### Main Menu Shortcuts

- `s` – Search YouTube for a keyword/phrase (choose Videos, Playlists, or Channels)
- `c` – Browse subscribed channels from your local list
- `h` – View watch history
- `j` – View search history
- `l` – View liked videos
- `m` – Miscellaneous menu (preferences, updates, cache management)
- `q` – Quit

## Configuration

Settings can be customized in `~/.config/keroro-search/keroro-search.conf`:

- `IMAGE_SUPPORT`: Preview engine (`ueberzugpp`, `kitty`, `chafa`, `ueberzug`, or `none`).
- `PREF_BROWSER`: Browser used for cookie authentication (`firefox`, `chrome`, `brave`, etc.).
- `LIST_LENGTH`: Number of items displayed per page (default: `30`).
- `USE_NERD_FONTS`: Enable or disable Nerd Font icons (`yes` / `no`).

## License

MIT License.
