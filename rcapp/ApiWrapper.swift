
import UIKit
import Alamofire

class ApiWrapper: NSObject {
    
    func getApiKey(login: String, password: String) -> String {
        let requestURL = "https://redhelper.ru/my/api/auth?login=\(login)/\(password)"
        let response = Alamofire.request(requestURL)
        return ""
    }

    func callUp(widgetId: String, number: String) -> Bool {
        Alamofire.request("https://web.redhelper.ru/rc/call/\(widgetId)/\(number)")
        return true
    }
    
    func getCallHistory(sh: Int, q: Int, key: String) -> String {
        let requestURL = "https://redhelper.ru/my/api/rc/calls?sh=\(sh)&q=\(q)&key=\(key)"
        var resultJson = ""
        Alamofire.request(requestURL).responseJSON {response in
            resultJson = String(describing: response.result.value)
        }
        return ""
    }
}
