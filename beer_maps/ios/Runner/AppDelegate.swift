import UIKit
import Flutter
import GoogleMaps


let filePath = Bundle.main.path(forResource: "keys.plist", ofType: "plist")
let plist = NSDictionary(contentsOfFile: filePath)
let MAPS_API_KEY = plist?.object(forKey: "MAPS_API_KEY") as? String else {
      fatalError("Couldn't find key 'MAPS_API_KEY' in 'keys.plist'.")
    }


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
     application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    GMSServices.provideAPIKey(MAPS_API_KEY)
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}