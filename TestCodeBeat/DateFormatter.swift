//
//  DateFormatter.swift
//  
//
//  Created by Viktor Olesenko on 20.04.17.
//
//

import Foundation

extension DateFormatter {
    
    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat = dateFormat
    }
    
    static var timeFormatter: DateFormatter {
        let df = DateFormatter.init()
        df.locale = .enUsPosix
        df.dateFormat = Utils.is24h
            ? "HH:mm"
            : "h:mm a"
        
        return df
    }
}

extension Locale {
    
    static let enUsPosix = Locale.init(identifier: "en_US_POSIX")
}

class Utils {
    
    static var is24h: Bool {
        let df = DateFormatter.dateFormat(fromTemplate: "j", options: 0, locale: .current)
        
        return df?.contains("a") == false
    }
}
