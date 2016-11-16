//
//  TabBarViewProtocol.swift
//  VIPERTabs
//
//  Created by MessageCue on 14/11/2016.
//  Copyright © 2016 Simapps. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarViewProtocol {
    
    var tabIcon:UIImage { get }
    var tabTitle:String { get }
    
    func configuredViewController() -> UIViewController
}
