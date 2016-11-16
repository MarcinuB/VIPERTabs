//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation
import UIKit

class FirstModuleWireFrame: FirstModuleWireFrameProtocol, TabBarViewProtocol
{
    var tabIcon:UIImage = UIImage(named:"Module1Image")!
    var tabTitle:String = "FirstModule"
    
    
    static func presentFirstModuleModule(fromView view: AnyObject)
    {
        // Generating module components
        let presenter: FirstModulePresenterProtocol & FirstModuleInteractorOutputProtocol = FirstModulePresenter()
        let interactor: FirstModuleInteractorInputProtocol = FirstModuleInteractor()
        let wireFrame: FirstModuleWireFrameProtocol = FirstModuleWireFrame()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view: FirstModuleViewProtocol = storyboard.instantiateViewController(withIdentifier: "FirstModuleView") as! FirstModuleView
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
       
    }
    
    func configuredViewController() -> UIViewController {
        let presenter: FirstModulePresenterProtocol & FirstModuleInteractorOutputProtocol = FirstModulePresenter()
        let interactor: FirstModuleInteractorInputProtocol = FirstModuleInteractor()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view: FirstModuleViewProtocol = storyboard.instantiateViewController(withIdentifier: "FirstModuleView") as! FirstModuleView
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = self
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view as! UIViewController
    }
}
