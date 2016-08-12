//
//  EmployeeInteractor.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

protocol EmployeeInteractorInput:class, ModuleConfigReciever{
    func viewIsReady()
}

class EmployeeInteractor: EmployeeInteractorInput {
    weak var presenter:EmployeePresenterInput?
    private var emloyee:Employee?
    
    var configBlock:ModuleConfigBlock?
    
    init(){
        self.configBlock = { any in
            self.emloyee = any as? Employee
        }
    }
    
    func viewIsReady(){
        presenter?.resetView()
        if let emloyee = self.emloyee {
            presenter?.updateView(emloyee)
        }
    }
}
