
import UIKit

class RedConnectCall: NSObject {
    var id: Int!
    var widgetId: Int!
    var time: String!
    var requestTimestamp: String!
    var scheduled: Int!
    var clientPhone:  String!
    var visitorPhone: String!
    var vid: Int!
    var duration: Int!
    var free: Bool!
    var liked: Bool!
    var feedbackComment: String!
    var page: String!
    var ip: String!
    var timeOnSite: String!
    var referrer: String!
    var visits: Int!
    var viewedPages: Int!
    var country: String!
    var countryRu: String!
    var city: String!
    var cityRu: String!
    var browser: String!
    var customFields: String!
    var status: String!
    var comment: String!
    var filename: String!
    
    var date: String {
        get {
            let dateWithTimeArray = time.components(separatedBy: " ")
            return dateWithTimeArray[0]
        }
    }
}
