---
![GitHub License](https://img.shields.io/github/license/novatransit/nova-transit-access?style=flat-square)
![Static Badge](https://img.shields.io/badge/powered_by-r5r-blue?style=flat-square&link=https%3A%2F%2Fipeagit.github.io%2Fr5r%2F)

---
# nova-transit-access

As part of our NoVA Transit Dashboard refresh, the Northern Virginia Transportation Commission (NVTC) sought to redefine our access to transit and access to jobs methodology used in the dashboard. This repository contains the data sources, analysis parameters, and code used to conduct access to opportunity analysis for Northern Virginia transit systems.

## Dashboard

***[The dashboard is available here - currently internal-only](https://nvtc.maps.arcgis.com/apps/dashboards/3bda02cf9d8e4a39ae666dca202d8446)***

## Directory

This repository is broken down into several sub-directories:

* **[documentation](/documentation/)** - Detailed methodology documentation covering data sources and analysis parameters used in the access to opportunity analysis
* **[data](/data/)** - Sample datasets used in the analysis
* **[scripts](/scripts/)** - Analysis code and processing scripts
* **[sample-outputs](/sample-outputs/)** - Example outputs and visualizations from the analysis

We'll be filling up this repository as time goes on with more documentation.

## About accessibility measures

For more general about the methods used in this dashboard/project, we recommend reviewing some literature on measures of access, access to opportunity, and accessibility measures. In particular, we can recommend the following:

* Jarrett Walker's explanation on access or ["the wall around your life"](https://humantransit.org/basics-access-or-the-wall-around-your-life)
* The State Smart Transportation Initiative [Measuring Accessibility: Guidance for Practictioners](https://ssti.us/wp-content/uploads/sites/1303/2020/12/Measuring-Accessibility-Final.pdf)
* For an overview of accessibility measures being deployed in the Virginia context to evaluate transportation projects, review Appendix C of the [SMART SCALE Technical Guide](https://smartscale.virginia.gov/media/smartscale/documents/508_R6_Technical-Guide_FINAL_FINAL_acc043024_PM.pdf)
* A paper on the general methods used in analysis similar to that here by Conway, Matthew Wigginton, Andrew Byrd, and Marco van der Linden (2017). [“Evidence-Based Transit and Land Use Sketch Planning Using Interactive Accessibility Methods on Combined Schedule and Headway-Based Networks”](http://trrjournalonline.trb.org/doi/abs/10.3141/2653-06)

## Disclaimers

This repository and its contents are provided "as-is" without warranty of any kind, express or implied. Users are responsible for verifying the accuracy and suitability of the data and methods for their specific use cases.

Individual data files may be subject to licenses that vary from the license of this repository. Where possible, the authors have indicated where this may be the case.

**Generative AI Assistance**: This code and documentation were developed with assistance from generative AI tools, including Claude Code. While all outputs have been reviewed and tested, users should validate results independently before use in production environments.
