//
//  LogController.swift
//  TravelDiary
//
//  Created by Brody Sears on 1/20/22.
//

import Foundation

class LogController {
    // MARK: - Singleton
    static let SharedInstance = LogController()
    // MARK: - Source of Truth
    var logs: [Log] = []
    // MARK: - CRUD Funcs
    
    func createLog(title: String, address: String, description: String) {
    let log = Log(title: title, address: address, description: address)
        logs.append(log)
        
    }
    
    func updateLog (log: Log, title: String, address : String, description: String) {
        log.title = title
        log.address = address
        log.description = description
            }
    
    func deleteLog(log: Log) {
        guard let index = logs.firstIndex(where: {$0 == log}) else {return}
    logs.remove(at: index)
    }
    
} // end of class

