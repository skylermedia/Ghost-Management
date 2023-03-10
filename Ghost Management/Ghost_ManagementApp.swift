//
//  Ghost_ManagementApp.swift
//  Ghost Management
//
//  Created by Skyler Szijjarto on 12/21/22.
//

import SwiftUI
import Firebase
import GoogleMobileAds

@main
struct Ghost_ManagementApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


...

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    // Use Firebase library to configure APIs.
    FirebaseApp.configure()

    // Initialize the Google Mobile Ads SDK.
    GADMobileAds.sharedInstance().start(completionHandler: nil)

    return true
  }

}
