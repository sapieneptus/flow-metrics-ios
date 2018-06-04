
import AppCenterAnalytics

class UserEvents {
    enum EventType : String {
        case AppLaunch
    }
    class func track(_ event: EventType) {
        MSAnalytics.trackEvent(event.rawValue)
    }
}
