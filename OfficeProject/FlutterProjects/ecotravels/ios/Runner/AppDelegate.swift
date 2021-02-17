import UIKit
import Flutter
import GoogleMaps


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

     GMSServices.provideAPIKey("AIzaSyAnyJML1g26tJ0p70bd79qbI8fZKZI89ZI")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
