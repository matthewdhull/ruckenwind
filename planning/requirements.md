# Description:
**A software system that displays a METAR or TAF for a station. A user may input an identifier for the station and view the current wx (METAR) or forecast (TAF). The user may choose favorite or default stations. The output will be textual information or a graphical display based on user preference. The system will offer a complication for display on the watch face for a selected station.**


### Requirements:
#### 1. Technical Requirements
* The system operates on the Apple Watch Hardware using WatchOS3.
* The system will be written in Swift 3.0 programming language
* The system will require a internet connection to receive current data. 
* The system will make use public data from http://www.aviationweather.gov returned in JSON format.
* The system depends upon the Gloss JSON parsing library to parse JSON data.
* The system will use a Swift implementation of the GeoLocation calculations for efficient data queries.
* The sytem will depend on SiriKit for contextual queries.

#### 2. Functional Requirements
* The user will be able to input stations via 'scribble' text input.
* The user will be able to input stations using dictation.
* The user can ask for station information by ICAO identifier.
* The user can ask for station information by airport name / site name.
* Inputs will be validated and a message will be returned to the user to alert of an invalid station input.
* An alert will be displayed when the METAR is more than one hour old.
* An alert will be displayed when the TAF is expired.
* The output may be toggled between graphical and textual formats.
* The altimetry output default may be in inHG or hPA.
* The visibility output  default may be in meters or statue miles.








