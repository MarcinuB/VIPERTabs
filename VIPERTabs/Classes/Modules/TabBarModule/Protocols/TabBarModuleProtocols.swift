//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarModuleViewProtocol: class
{
    var presenter: TabBarModulePresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol TabBarModuleWireFrameProtocol: class
{
    static func installIntoWindow(rootWireFrame: RootWireframe, window: UIWindow, wireFrames:[TabBarViewProtocol]) -> TabBarModuleWireFrameProtocol
    var rootWireframe: RootWireframe? { get set }
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol TabBarModulePresenterProtocol: class
{
    var view: TabBarModuleViewProtocol? { get set }
    var interactor: TabBarModuleInteractorInputProtocol? { get set }
    var wireFrame: TabBarModuleWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol TabBarModuleInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol TabBarModuleInteractorInputProtocol: class
{
    var presenter: TabBarModuleInteractorOutputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

