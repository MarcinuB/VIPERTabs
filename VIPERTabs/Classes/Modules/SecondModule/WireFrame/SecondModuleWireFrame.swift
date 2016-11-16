//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation
import UIKit

class SecondModuleWireFrame: SecondModuleWireFrameProtocol, TabBarViewProtocol
{
    var tabIcon:UIImage = UIImage(named:"Module2Image")!
    var tabTitle:String = "SecondModule"
    
    static func presentSecondModuleModule(fromView view: AnyObject)
    {
        // Generating module components
        let presenter: SecondModulePresenterProtocol & SecondModuleInteractorOutputProtocol = SecondModulePresenter()
        let interactor: SecondModuleInteractorInputProtocol = SecondModuleInteractor()
        let wireFrame: SecondModuleWireFrameProtocol = SecondModuleWireFrame()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view: SecondModuleViewProtocol = storyboard.instantiateViewController(withIdentifier: "SecondModuleView") as! SecondModuleView
       
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
    }
    
    func configuredViewController() -> UIViewController {
        let presenter: SecondModulePresenterProtocol & SecondModuleInteractorOutputProtocol = SecondModulePresenter()
        let interactor: SecondModuleInteractorInputProtocol = SecondModuleInteractor()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view: SecondModuleViewProtocol = storyboard.instantiateViewController(withIdentifier: "SecondModuleView") as! SecondModuleView
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = self
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view as! UIViewController
    }
}
