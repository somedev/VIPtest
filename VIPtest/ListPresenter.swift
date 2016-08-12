//
//  ListPresenter.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

protocol ListPresenterInput:class {
    func update(_ data:Array<Employee>?)
}

class ListPresenter: ListPresenterInput {
    weak var view:ListViewInput?
    
    func update(_ data:Array<Employee>?) {
        guard let data = data  else {
            view?.showError("error")
            return
        }
        
        view?.updateWithData(data)
    }
}
