//
//  ListWireframe.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

protocol ListWireframeInput:class {
    func showEmployeeDetail(_ employee:Employee)
}

final class ListWireframe:ListWireframeInput {
    weak var view:ListViewController?
    
    func showEmployeeDetail(_ employee:Employee){
        view?.performSegue(withIdentifier: "detailSegue", sender: ConfigWrapper(config: employee))
    }
}
