//
//  OSLog+.swift
//  AppState
//
//  Created by Jaewon on 2022/08/14.
//

import Foundation
import OSLog

extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    static let test = OSLog.init(subsystem: subsystem, category: "Test")
}
