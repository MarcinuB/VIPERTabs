//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class FirstModulePresenter: FirstModulePresenterProtocol, FirstModuleInteractorOutputProtocol
{
    weak var view: FirstModuleViewProtocol?
    var interactor: FirstModuleInteractorInputProtocol?
    var wireFrame: FirstModuleWireFrameProtocol?
    
    init() {}
}
