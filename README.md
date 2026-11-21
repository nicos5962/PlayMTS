# PlayMTS

Lyrion Music Server (LMS) plugin: **MPEG transport stream**. Plays the audio of MPEG transport stream files.

## Features

- File types: `mts, m2ts, ts`
- Discogs release id (tag such as `DISCOGS_RELEASE_ID`) is used as the album id, so different releases of the same album / artist are not merged into one album
- Scanner-safe registration (`Register.pm`): the tag handler is registered both in the server and in the scanner (`Importer.pm`), without any web / UI dependency
- Tags (title, artist, album, ...) and audio properties are read with `ffprobe`; the audio stream is decoded by `ffmpeg`
- Transcoding through `ffmpeg` (and `lame` for MP3 output) via `custom-convert.conf`; FLAC is preferred over PCM

## Requirements

- Lyrion Music Server 7.7 or newer (developed on 9.1.1)
- `ffmpeg`, `ffprobe`, `lame` (MP3 output) available to the server

## Installation

Copy the `PlayMTS` folder into the `Plugins` directory of the server cache (for example `/config/cache/Plugins`), then restart Lyrion and rescan the library.

## Files

| File | Purpose |
| --- | --- |
| `install.xml` | Plugin manifest |
| `Plugin.pm` | Server plugin, registers the handler |
| `Importer.pm` | Scanner entry point |
| `Register.pm` | Registers the tag handler (shared by server and scanner) |
| `Formats/` | Tag handler for the file type |
| `custom-types.conf` | File suffix / MIME type |
| `custom-convert.conf` | Transcoding rules |
| `strings.txt` | Text strings |

## Version

1.0

## Author

nicos
