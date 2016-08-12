//
//  ListService.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation


private struct CoreData {
    var employees:Array<Employee> = [
        Employee(name:"Foo", surname: "Bar"),
        Employee(name:"Bazz", surname: "Fazz"),
        Employee(name:"One", surname: "Two")
    ]
    
    static var shared = CoreData()
}




class EmployeeService {
    func fetch(_ callback: (Array<Employee>?)->()) {
        callback(CoreData.shared.employees)
    }
}
