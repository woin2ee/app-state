//
//  Logger+.swift
//  AppState
//
//  Created by Jaewon on 2022/08/14.
//

import Foundation
import OSLog

extension Logger {
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    static let test = Logger.init(subsystem: subsystem, category: "Test")
}
