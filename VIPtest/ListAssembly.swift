//
//  ListAssembly.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

@objc class ListAssembly:NSObject {
    @IBOutlet weak var view:ListViewController?
    
    let wireframe = ListWireframe()
    
    override func awakeFromNib() {
        let interactor = ListInteractor()
        
        let presenter = ListPresenter()
        presenter.view = view
        
        view?.interactor = interactor
        
        interactor.presenter = presenter
        interactor.wireframe = wireframe
        wireframe.view = view
    }
}
