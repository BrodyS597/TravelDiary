//
//  Log.swift
//  TravelDiary
//
//  Created by Brody Sears on 1/20/22.
//

import Foundation

class Log {
    
    // MARK: - Properties
    var title: String
    var address: String
    var date: Date
    var description: String
    
    // MARK: - Initializer
    internal init(title: String, address: String, date: Date = Date(), description: String) {
        self.title = title
        self.address = address
        self.date = date
        self.description = description
        
    }
}//end of class

extension Log: Equatable {
    static func == (lhs: Log, rhs: Log) -> Bool {
        lhs.title == rhs.title &&
        lhs.address == rhs.address &&
        lhs.description == rhs.description
    }
    
    
}
