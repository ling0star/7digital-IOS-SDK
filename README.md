# SevenDigital

## Introduction
If you’re looking to create new music websites and applications, or to integrate music into existing services, we offer the perfect solution. Using our API, you can use and license the 7digital technology platform, which includes millions of tracks that can be delivered as downloads or streams, in a variety of formats

The 7Digital SDK allows you to interact with the 7Digital API, so you can download and stream 7Digital content in your iOS application.

Our Public API is completely free and open to everyone, which means that there are some usage and volume limits.  To get started you should sign up for the Public API at http://access.7digital.com/partnerprogram, and all the documentation for the features and functions is online at http://developer.7digital.com/.  Access to API methods marked as PREMIUM can be granted upon request, please get in touch with description of the service you’re building.

If you plan to utilise our platform or global music licenses for commercial purposes, please contact our Sales Team at http://about.7digital.com/business/contact-the-b2b-team/.

## Requirements
The 7Digital SDK requires iOS 7.0 or above, and the libxml2 library to run.

## Cocoapods Installation

SevenDigital is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "SevenDigital"

## Usage

	To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Alternative Integration

1. Add the files to your project
	1. Download all of the project files
	2. Drag the files in the Classes/ folder to your project
	3. Drag the libSevenDigital.a file to your project

2. Verify that the libSevenDigital.a has been added to the Link Binary with Libraries Build Phase for your target
	1. Go to your Project->Targets->Build Phases->Link Binary With Libraries
	2. If it isn't on the list here, Press the + symbol to add a new framework
	3. Find libSevenDigital.a and click 'Add'

3. Add libxml2.dylib to your Link Binaries With Libraries Build Phase using the same process as in step 2

4. Get your App Credentials at http://access.7digital.com/partnerprogram

5. In your Application Delegate:
	1. Import SevenDigital: #import "SevenDigital.h"
	2. Launch the SevenDigital library with your App Credentials
		In your application:didFinishLaunchingWithOptions: call
		
			[SevenDigital initializeWithConsumerKey:@"[Your Consumer Key]" andSecret:@"[Your Secret]"];
		
6. Many of the 7Digital API methods require the user to be logged in. Create your own 7Digital account at www.7digital.com

## Author

7 Digital, support@7digital.com

## License

SevenDigital is available under the Apache license. See the LICENSE file for more info.

