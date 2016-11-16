//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class TabBarModulePresenter: TabBarModulePresenterProtocol, TabBarModuleInteractorOutputProtocol
{
    weak var view: TabBarModuleViewProtocol?
    var interactor: TabBarModuleInteractorInputProtocol?
    var wireFrame: TabBarModuleWireFrameProtocol?
    
    init() {}
}
