//
//  ListInteractor.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

protocol ListInteractorInput:class {
    func viewIsReady()
    func viewSelectedEmployee(_ employee:Employee)
}

final class ListInteractor:ListInteractorInput {
    var presenter:ListPresenterInput?
    weak var wireframe:ListWireframeInput?
    
    private var service = EmployeeService()
    
    func viewIsReady() {
        service.fetch { data in
            self.presenter?.update(data)
        }
    }
    
    func viewSelectedEmployee(_ employee:Employee) {
        self.wireframe?.showEmployeeDetail(employee)
    }
}
