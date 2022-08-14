//
//  MainViewController.swift
//  AppState
//
//  Created by Jaewon on 2022/08/11.
//

import UIKit
import OSLog

final class MainViewController: UIViewController {
    
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    func startTimer() {
        timer = .scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            os_log("Running...", log: .test)
        }
    }
}
