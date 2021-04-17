import SwiftUI

public func SwiftyMoment(date : Any) -> String {
    if let dateInt = date as? Int {
        let dateinterval  : DateComponents = (Calendar.current.dateComponents([.year,.month,.weekday,.day,.hour, .minute], from: (Date(timeIntervalSince1970: TimeInterval(dateInt / 1000)) ), to: Date()))
        
        if dateinterval.year ?? 0 > 0 {
            if dateinterval.year ?? 0 == 1{
                return "\(dateinterval.year ?? 0)year ago"
            }
            else{
                return "\(dateinterval.year ?? 0)years ago"
            }
        }
        else if dateinterval.month ?? 0 > 0 {
            if dateinterval.month ?? 0 == 1{
                return "\(dateinterval.month ?? 0)month ago"
            }
            else {
                return "\(dateinterval.month ?? 0)months ago"
            }
        }
        else if dateinterval.weekday ?? 0 > 0 {
            if dateinterval.weekday ?? 0 == 1{
                return "\(dateinterval.weekday ?? 0)week ago"
            }
            else {
                return "\(dateinterval.weekday ?? 0)weeks ago"
            }
        }
        else if dateinterval.day ?? 0 > 0 {
            if dateinterval.day ?? 0 == 1{
                return "yesterday"
            }
            else {
                return "\(dateinterval.day ?? 0)days ago"
            }
        }
        else if dateinterval.hour ?? 0 > 0 {
            if dateinterval.hour ?? 0 == 1{
                return "\(dateinterval.hour ?? 0)hour ago"
            }
            else{
                return "\(dateinterval.hour ?? 0)hours ago"
            }
        }
        else if dateinterval.minute ?? 0 > 0{
            if dateinterval.minute ?? 0 == 1{
                return "\(dateinterval.minute ?? 0)minute ago"
            }
            else {
                return "\(dateinterval.minute ?? 0)minutes ago"
            }
        }
        else {
            return "few seconds ago"
        }
    }
    /*
     else if let dateString = date as? String {
     let dateFormatter  = DateFormatter()
     dateFormatter.dateFormat = "yyyy-MM-ddTHH:mm:ss"
     let dateValue : Date = dateFormatter.date(from: dateString) ?? Date()
     
     let dateinterval  : DateComponents = (Calendar.current.dateComponents([.year,.month,.weekday,.day,.hour, .minute], from:dateValue, to: Date()))
     
     if dateinterval.year ?? 0 > 0 {
     return "\(dateinterval.year ?? 0)years ago"
     }
     else if dateinterval.month ?? 0 > 0 {
     return "\(dateinterval.month ?? 0)months ago"
     }
     else if dateinterval.weekday ?? 0 > 0 {
     return "\(dateinterval.weekday ?? 0)weeks ago"
     }
     else if dateinterval.day ?? 0 > 0 {
     return "\(dateinterval.day ?? 0)days ago"
     }
     else if dateinterval.hour ?? 0 > 0 {
     return "\(dateinterval.hour ?? 0)hours ago"
     }
     else if dateinterval.minute ?? 0 > 0{
     return "\(dateinterval.minute ?? 0)minutes ago"
     }
     else {
     return "few seconds ago"
     }
     }
     */
    else if let dateDate = date as? Date{
        let dateinterval  : DateComponents = (Calendar.current.dateComponents([.year,.month,.weekday,.day,.hour, .minute], from: dateDate, to: Date()))
        
        if dateinterval.year ?? 0 > 0 {
            if dateinterval.year ?? 0 == 1{
                return "\(dateinterval.year ?? 0)year ago"
            }
            else{
                return "\(dateinterval.year ?? 0)years ago"
            }
        }
        else if dateinterval.month ?? 0 > 0 {
            if dateinterval.month ?? 0 == 1{
                return "\(dateinterval.month ?? 0)month ago"
            }
            else {
                return "\(dateinterval.month ?? 0)months ago"
            }
        }
        else if dateinterval.weekday ?? 0 > 0 {
            if dateinterval.weekday ?? 0 == 1{
                return "\(dateinterval.weekday ?? 0)week ago"
            }
            else {
                return "\(dateinterval.weekday ?? 0)weeks ago"
            }
        }
        else if dateinterval.day ?? 0 > 0 {
            if dateinterval.day ?? 0 == 1{
                return "yesterday"
            }
            else {
                return "\(dateinterval.day ?? 0)days ago"
            }
        }
        else if dateinterval.hour ?? 0 > 0 {
            if dateinterval.hour ?? 0 == 1{
                return "\(dateinterval.hour ?? 0)hour ago"
            }
            else{
                return "\(dateinterval.hour ?? 0)hours ago"
            }
        }
        else if dateinterval.minute ?? 0 > 0{
            if dateinterval.minute ?? 0 == 1{
                return "\(dateinterval.minute ?? 0)minute ago"
            }
            else {
                return "\(dateinterval.minute ?? 0)minutes ago"
            }
        }
        else {
            return "few seconds ago"
        }
    }
    else{
        print("input error")
        return ""
    }
}
