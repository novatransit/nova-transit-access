---
title: GTFS files
date: 2025-09-09
modified: 2025-09-16
---

To ensure that any future reviewers receive the most up-to-date GTFS files, we have chosen not to host the *full set* of GTFS zip files for the various transit providers that make up this analysis. The GTFS Schedule files in this directory represent a subset of the full set used in the analysis (only the agencies within the NVTC district). Instead, we are providing direct links to the GTFS Schedule files for these transit operators below.

Depending on the agency, the data linked on this website may be available through a license agreement or without a license agreement. Check individual agency websites or the feed download site for further information.  If you have any questions about these files, contact the agency directly.

For Northern Virginia agencies, up-to-date links to GTFS files are available at the Virginia Department of Rail and Public Transportation [(DRPT) GTFS clearinghouse](https://drpt.virginia.gov/data/gtfs-feed-clearinghouse/).

* Arlington Transit (ART): [https://www.arlingtontransit.com/shared/content/gtfs/art/google_transit.zip](https://www.arlingtontransit.com/shared/content/gtfs/art/google_transit.zip)
* DASH (Alexandria): [http://dashbus.com/google_transit.zip](http://dashbus.com/google_transit.zip)
* City-University-Everyone (CUE - Fairfax City): [https://www.fairfaxva.gov/files/assets/city/v/2/public-works/documents/schedules-and-maps/cue-gtfs.zip](https://www.fairfaxva.gov/files/assets/city/v/2/public-works/documents/schedules-and-maps/cue-gtfs.zip)
* Fairfax Connector: [https://www.fairfaxcounty.gov/connector/sites/connector/files/assets/connector_gtfs.zip](https://www.fairfaxcounty.gov/connector/sites/connector/files/assets/connector_gtfs.zip)
* Loudoun County Transit (LCT): [https://www.loudoun.gov/loudountransitgtfs](https://www.loudoun.gov/loudountransitgtfs)
* Washington Metropolitan Area Transportation Authority (WMATA) Bus[^1]: [https://api.wmata.com/gtfs/bus-gtfs-static.zip](https://api.wmata.com/gtfs/bus-gtfs-static.zip)
* Washington Metropolitan Area Transportation Authority (WMATA) Rail[^1]: [https://api.wmata.com/gtfs/rail-gtfs-static.zip](https://api.wmata.com/gtfs/rail-gtfs-static.zip)
* Virginia Railway Express (VRE): [http://www.vre.org/gtfs/google_transit.zip](http://www.vre.org/gtfs/google_transit.zip)
* Potomac-Rappahannock Transportation Commission/OmniRide: [http://omniride.com/omniride/assets/File/google_transit.zip](http://omniride.com/omniride/assets/File/google_transit.zip)

### Downloading WMATA GTFS files

As noted in the footnote, WMATA requires an API key to download GTFS files or any files from their data platform. Once you have an API key, you should be able to use it in your terminal to download the desired files directly. Here's how to do this in the `bash` terminal (the default on most Linux distributions and in the Windows Subsystem for Linux), the `zsh` terminal (the default on macOS), and in PowerShell (the default on Windows). All instructions assume you're starting in your home directory and will be downloading directly to your Downloads directory.

These instructions are generally applicable for GTFS Schedule files that use a header to verify the presence of an API key.

In `bash`:

```bash
#!/bin/bash:
cd Downloads
curl -v -H "api_key: aaabbbcccdddeeefff12345671234567" https://api.wmata.com/gtfs/bus-gtfs-static.zip
```

In `zsh`:

```zsh
#!/usr/bin/env zsh
cd Downloads
curl -v -H "api_key: aaabbbcccdddeeefff12345671234567" https://api.wmata.com/gtfs/bus-gtfs-static.zip
```

In PowerShell:

```pwsh
Set-Location -Path C:\Users\MyUser\Downloads # PowerShell also accepts cd as an alias for Set-Location
$headers = @{'api_key' = 'aaabbbcccdddeeefff12345671234567'}
Invoke-RestMethod -Uri "https://api.wmata.com/gtfs/bus-gtfs-static.zip" -Headers $headers -OutFile "bus-gtfs-static.zip"
```

[^1]: WMATA requires an API key to download GTFS files. You may get your own key from [https://developer.wmata.com/](https://developer.wmata.com/)
