//
//  MainViewController.swift
//  AppState
//
//  Created by Jaewon on 2022/08/11.
//

import UIKit
import OSLog

final class MainViewController: UIViewController {
    
    private var fastTimer: Timer?
    private var slowTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startFastCounter()
        startSlowCounter()
    }
    
    func startFastCounter() {
        var count: Int = 0
        
        let identifier = UIApplication.shared.beginBackgroundTask(expirationHandler: {
            Logger.test.error("주어진 Background Task 실행 시간이 만료되었습니다. (현재 Fast Counter 값: \(count))")
        })
        
        fastTimer = .scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            count += 1
            Logger.test.notice("Running Fast Counter(\(count))")
            
            if count >= 10 {
                self.fastTimer?.invalidate()
                Logger.test.notice("Finish Fast Counter")
                UIApplication.shared.endBackgroundTask(identifier)
            }
        }
    }
    
    func startSlowCounter() {
        var count: Int = 0
        
        let identifier = UIApplication.shared.beginBackgroundTask(expirationHandler: {
            Logger.test.error("주어진 Background Task 실행 시간이 만료되었습니다. (현재 Slow Counter 값: \(count))")
        })
        
        slowTimer = .scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
            count += 1
            Logger.test.notice("Running Slow Counter(\(count))")
            
            if count >= 10 {
                self.slowTimer?.invalidate()
                Logger.test.notice("Finish Slow Counter")
                UIApplication.shared.endBackgroundTask(identifier)
            }
        }
    }
}
