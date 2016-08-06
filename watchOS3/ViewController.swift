//
//  ViewController.swift
//  watchOS3
//
//  Created by 西村 拓 on 2016/08/06.
//  Copyright © 2016年 TakuNishimura. All rights reserved.
//

import UIKit

import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction private func notificationButtonTapped() {
        // UNMutableNotificationContent 作成
        let content = UNMutableNotificationContent()
        content.title = "Hello!"
        content.body = "World!"
        content.sound = UNNotificationSound.default()
        
        // 5秒後に発火する UNTimeIntervalNotificationTrigger 作成、
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        
        // identifier, content, trigger から UNNotificationRequest 作成
        let request = UNNotificationRequest.init(identifier: "FiveSecondNotification", content: content, trigger: trigger)
        
        // UNUserNotificationCenter に request を追加
        let center = UNUserNotificationCenter.current()
        center.add(request)
    }
}

