# Test Plan
<!--
*This is the template for your test plan. The parts in italics are concise explanations of what should go in the corresponding sections and should not appear in the final document.*
-->

**Author**: Matthew

## 1 Testing Strategy

### 1.1 Overall strategy
<!--
*This section should provide details about your unit-, integration-, system-, and regression-testing strategies. In particular, it should discuss which activities you will perform as part of your testing process, and who will perform such activities.*
-->

### 1.2 Test Selection
<!--
*Here you should discuss how you are going to select your test cases, that is, which black-box and/or white-box techniques you will use. If you plan to use different techniques at different testing levels (e.g., unit and system), you should clarify that.*
-->


### 1.3 Adequacy Criterion
<!--
*Define how you are going to assess the quality of your test cases. Typically, this involves some form of functional or structural coverage. If you plan to use different techniques at different testing levels (e.g., unit and system), you should clarify that.*
-->


### 1.4 Bug Tracking
<!--
*Describe how bugs and enhancement requests will be tracked.*
-->

<!--
*Describe any testing technology you intend to use or build (e.g., JUnit, Selenium).*
-->


## 2 Test Cases
<!--
*This section should be the core of this document. You should provide a table of test cases, one per row. For each test case, the table should provide its purpose, the steps necessary to perform the test, the expected result, the actual result (to be filled later), pass/fail information (to be filled later), and any additional information you think is relevant.*
-->

Test | Purpose | Steps to Perform | Expected Result | Actual Result | Pass/Fail |
-------------| -------------| -------------| -------------| -------------| -------------
1.1 Test that the app detects the first launch and  | To verify first launch defaults | 1. Create a first launch scenario 2. Invoke app launch -didFinishLaunchWithOptions function 3. Access defaults for launch. | defaultsForKey "first launch" = true| TBD | TBD
1.2. Test that the app detects when it has been launched before | To verify >= second app launches | 1. Create a second launch scenario 2. Invoke app launch -didFinishLaunchWithOptions functions 3. Access defaults for launch.| defaultsForKey "first launch" = false| TBD| TBD
1.3 Test that the app detects when it has been launched before but no default station is set| Detect when no default station is set | 1. Create a second launch scenario 2. Invoke didFinishLaunchingWithOptions. 3. Access launch default and default stations| defaultsForKey "first launch" = false and default station is not set | TBD | TBD
2.1 Test validation of station input with malformed string | Verify only valid stations are requested | 1. Input invalid station input of less than required characters or containing invalid characters. 2. Use pattern match to detect malformed queries without accessing the data file and searching for the station. | Invalid stations return a false value from MainUI.entryIsValid attribute | TBD| TBD
2.2 Test validation of station input with properly formed string but a non-existent station| Verify that an invalidStation is false when the station is not found in the data file. | 1. Invalid well formed string of a non-existent station.  2. Search for station in Sites data file. | Non-Existent stations are invalid.  Return a false value from MainUI.entryIsValid attribute | TBD | TBD
2.3 Test validation of a valid station input | Verify that a valid station is found within the Sites data file. | 1. Input a valid station string.  2. Search for station in Sites data file. | Existing stations are valid and return a true value from the MainUI.entryIsValid attribute |TBD| TBD
3. *Reserved Graphic for Key Testing* | | | | TBD | TBD
4.1 Unit conversion from SM to Meters | To validate conversion code from statue miles to meters| 1. Input statue miles value and convert to meters. 2. Compare against a known value| Converted value and known are equal | TBD | TBD
4.2 Unit conversion from Meters to SM | Validation conversion code from meters to statue miles. | 1. Input meters value and convert to statue miles.  2. Compare against a known value.  | Converted value and known are equal | TBD | TBD
4.3 Unit conversion from inHG to HPa | Validate conversion code from inches of Mercury to Hecto-Pascals | 1. Input inHG value and convert to HPa. 2. Compare in the manner from test case 4.1  | Converted value and known are equal| TBD | TBD
4.4 Unit conversion from HPa to inHG | Validate conversion code from Hecto-Pascals to inches of Mercury | 1. Input HPa value and convert to inHG. 2. Compare in the manner from test case 4.1 | Converted value and known are equal. | TBD | TBD

