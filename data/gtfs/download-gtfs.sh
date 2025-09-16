#!/usr/bin/bash

# This script will simply run wget for all the GTFS files and output them in the working directory
# This script will also provide a way to download WMATA GTFS files with your API key provided

CURRENT_MONTH=$(date +"%m")
CURRENT_YEAR=$(date +"%Y")

WMATA_API='aaabbbcccdddeeefff12345671234567' # replace with your actual WMATA API key

wget -O ART_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip https://www.arlingtontransit.com/shared/content/gtfs/art/google_transit.zip

wget -O DASH_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip http://dashbus.com/google_transit.zip

wget -O CUE_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip https://www.fairfaxva.gov/files/assets/city/v/2/public-works/documents/schedules-and-maps/cue-gtfs.zip

wget -O FFX_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip https://www.fairfaxcounty.gov/connector/sites/connector/files/assets/connector_gtfs.zip

wget -O LCT_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip https://www.loudoun.gov/loudountransitgtfs

wget -O VRE_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip http://www.vre.org/gtfs/google_transit.zip

wget -O OmniRide_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip http://omniride.com/omniride/assets/File/google_transit.zip

curl -o WMATA_Bus_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip -v -H "api_key: $WMATA_API" https://api.wmata.com/gtfs/bus-gtfs-static.zip

curl -o WMATA_Rail_"$CURRENT_YEAR"_"$CURRENT_MONTH".zip -v -H "api_key: $WMATA_API" https://api.wmata.com/gtfs/rail-gtfs-static.zip

