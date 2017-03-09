
import UIKit

class DataFormat: NSObject {
    
    static func phoneNumberFormat (number: String) -> String {
        
        var phone: String = "+"
        var i = 0
        let space: Character = " "
        let bktOpen: Character = "("
        let bktClose: Character = ")"
        let dash: Character = "-"
        
        for char in number.characters {
            phone.append(char)
            if (i == 3) { phone.append(bktClose) }
            if (i == 0) || (i == 3) { phone.append(space) }
            if (i == 0) { phone.append(bktOpen) }
            if (i == 6) || (i == 8) { phone.append(dash)}
            i += 1
        }
        return phone
    }
    
    static func timeFormat (dateWithTime: String) -> String {
        let dateWithTimeArray = dateWithTime.components(separatedBy: " ")
        let timeArray = dateWithTimeArray[1].components(separatedBy: ":")
        let time = timeArray[0] + ":" + timeArray[1]
        return time
    }
    
    static func replaceChar (str: String, replace: Character, replaced: Character) -> String {
        var str1 = ""
        for Character in str.characters {
            var i = Character
            if i == replace {
                i = replaced
            }
            str1.append(i)
        }

        return str1
    }
    
}
