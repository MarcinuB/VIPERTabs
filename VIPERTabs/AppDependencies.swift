//
//  AppDependencies.swift
//  VIPERTabs
//
//  Created by MessageCue on 14/11/2016.
//  Copyright © 2016 Simapps. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies{

    class func initWithWindow(window: UIWindow) -> AppDependencies
    {
        let obj = AppDependencies()
        
        obj.configureDependencies(window: window)
        
        return obj
    }
    

    var rootWireframe: RootWireframe?
    
    func configureDependencies(window: UIWindow)
    {
        rootWireframe = RootWireframe.init(window: window)
        rootWireframe!.installViewIntoRootViewController()
        
    }
}

