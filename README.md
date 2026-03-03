# MidwestCam

Construction photo documentation for [Midwest Pavement Contracting, Inc.](https://midwestpavement.com)

Built on [DukeCam](https://github.com/trevoreduke/dukecam) — self-hosted, zero per-user fees.

## Features

- **Rapid Shoot camera** — snap photos as fast as you can tap, all queue in the background
- **Offline-first uploads** — IndexedDB queue survives browser closes and signal drops
- **No logins** — pick your name from a dropdown, cookie remembers
- **Project QR codes** — print and post at job sites
- **Day-grouped timeline** with worker initials on each tile
- **Photo tagging** — Progress, Before, After, Issue
- **Shareable gallery links** with OG previews
- **EXIF extraction** — GPS coordinates and timestamps
- **Lightbox** with arrow key / swipe navigation and rotation
- **PWA installable** — add to home screen

## Quick Start

```bash
docker compose up -d
# Open http://localhost:4011
# Go to /admin to create your first project
```

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `DATABASE_URL` | `postgres://...@localhost:5432/midwestcam` | PostgreSQL connection |
| `STORAGE_PATH` | `/data/photos` | Photo storage |
| `THUMB_PATH` | `/data/thumbs` | Thumbnail storage |
| `BASE_URL` | `https://midwestcam.thomasduke.io` | Public URL |
| `MAX_UPLOAD_MB` | `50` | Max upload size |
| `PORT` | `4011` | HTTP port |

## License

MIT
