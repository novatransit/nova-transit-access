---
title: OSM files
date: 2025-09-09
modified: 2025-09-16
---

To save space and to ensure that any future reviewers receive the most up-to-date OSM files, we have chosen not to host the OSM PBF file required by R5r in this repository. Instead, we are providing instructions on how to download it with the correct boundaries.

## Downloading using web-based tools

There are many tools available to download OSM PBF files including:

- [OSM By The Slice](https://slice.openstreetmap.us)
- [HOT Export Tool](https://export.hotosm.org/v3/)

If using either tool, the exact boundary of the analysis area as used by NVTC is available as [DMV_Dissolve.geojson](/data/shapefiles/DMV_Dissolve.geojson).

Simply import this boundary, then export an OSM PBF file with this boundary polygon. The file should, at minimum, contain all roads and footpaths in the region.

## Downloading using command-line tools (advanced)

If you are familiar/comfortable with working in the terminal/command line, you may use the [osmium-tool](https://osmcode.org/osmium-tool/) command-line tool to download these files.

### Installation

To install `osmium-tool` on Debian/Ubuntu-based Linux systems:

```bash
sudo apt install osmium-tool
```

To install `osmium-tool` on Fedora/Red Hat-based Linux systems:

```bash
sudo dnf install osmium-tool
```

To install `osmium-tool` on macOS systems with [Homebrew](https://brew.sh/) installed:

```zsh
brew install osmium-tool
```

### Downloading full OSM PBF files of the region

Regardless of your OS, once you have `osmium-tool` installed, download the OSM PBF files for DC, Maryland, and Virginia.

```bash
wget -O dc.osm.pbf https://download.geofabrik.de/north-america/us/district-of-columbia-latest.osm.pbf
wget -O maryland.osm.pbf https://download.geofabrik.de/north-america/us/maryland-latest.osm.pbf  
wget -O virginia.osm.pbf https://download.geofabrik.de/north-america/us/virginia-latest.osm.pbf
```

### Clipping to analysis boundary

Once downloaded, clip to the analysis boundary in [DMV_Dissolve.geojson](/data/shapefiles/DMV_Dissolve.geojson).

```bash
osmium extract --polygon DMV_dissolve.geojson \
               dc.osm.pbf maryland.osm.pbf virginia.osm.pbf \
               -o dmv.osm.pbf
```
