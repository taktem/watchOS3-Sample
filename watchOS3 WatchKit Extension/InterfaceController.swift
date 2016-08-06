//
//  InterfaceController.swift
//  watchOS3 WatchKit Extension
//
//  Created by 西村 拓 on 2016/08/06.
//  Copyright © 2016年 TakuNishimura. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: AnyObject?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
