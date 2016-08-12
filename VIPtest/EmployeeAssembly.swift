//
//  EmployeeAssembly.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

@objc class EmployeeAssembly:NSObject {
    let interactor:EmployeeInteractor = EmployeeInteractor()
    let presenter:EmployeePresenter = EmployeePresenter()
    @IBOutlet weak var view:EmployeeViewController?
    
    override func awakeFromNib() {
        interactor.presenter = presenter
        presenter.view = view
        view?.interactor = interactor
    }
    
}
