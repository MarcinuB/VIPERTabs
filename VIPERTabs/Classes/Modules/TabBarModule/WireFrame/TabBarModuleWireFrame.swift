//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation
import UIKit

class TabBarModuleWireFrame: TabBarModuleWireFrameProtocol
{
    var rootWireframe: RootWireframe?
    
    static func installIntoWindow(rootWireFrame: RootWireframe, window: UIWindow, wireFrames:[TabBarViewProtocol]) -> TabBarModuleWireFrameProtocol{
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
        let view: TabBarModuleViewProtocol = storyboard.instantiateInitialViewController() as! TabBarModuleView
        let presenter: TabBarModulePresenterProtocol & TabBarModuleInteractorOutputProtocol = TabBarModulePresenter()
        let interactor: TabBarModuleInteractorInputProtocol = TabBarModuleInteractor()
        let wireFrame: TabBarModuleWireFrameProtocol = TabBarModuleWireFrame()
        
        wireFrame.rootWireframe = rootWireFrame
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        
        var viewControllers = [UIViewController]()
        
        for wireFrame in wireFrames {
        
            let tabBarItem = UITabBarItem()
            tabBarItem.image = wireFrame.tabIcon
            tabBarItem.title = wireFrame.tabTitle
            let viewController = wireFrame.configuredViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.tabBarItem = tabBarItem
            navigationController.setNavigationBarHidden(false, animated: false)
            navigationController.title = wireFrame.tabTitle
            viewControllers.append(navigationController)
        }
        
        //installing tabBarController into window 
        //rest interactions can be done VIPER way
        let tabBarController = view as! UITabBarController
        tabBarController.viewControllers = viewControllers
        window.rootViewController = tabBarController
        
        return wireFrame
    }

}
