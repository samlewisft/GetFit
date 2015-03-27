import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    //My personal Google Maps API Key as requested from the google developer portal
    let googleMapsApiKey = "AIzaSyCSaUFcJYxiwoqm-cU0JvpkI0PQHDwYlk4"
    
    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        GMSServices.provideAPIKey(googleMapsApiKey)
        return true
    }
}

