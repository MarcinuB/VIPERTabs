//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

class SecondModulePresenter: SecondModulePresenterProtocol, SecondModuleInteractorOutputProtocol
{
    weak var view: SecondModuleViewProtocol?
    var interactor: SecondModuleInteractorInputProtocol?
    var wireFrame: SecondModuleWireFrameProtocol?
    
    init() {}
}
