//
//  EmployeePresenter.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

protocol EmployeePresenterInput:class {
    func updateView(_ employee:Employee)
    func resetView()
}

class EmployeePresenter: EmployeePresenterInput {
    weak var view:EmployeeViewInput?
    
    func updateView(_ employee:Employee){
         view?.setupView(employee.name, surname: employee.surname)
    }
    
    func resetView(){
        view?.setupView("", surname: "")
    }

}
