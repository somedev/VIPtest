//
//  EmployeeViewController.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import UIKit

protocol  EmployeeViewInput:class {
    func setupView(_ name:String, surname:String)
}

class EmployeeViewController: UIViewController, EmployeeViewInput, ModuleConfigTransmitter {
    var interactor:EmployeeInteractorInput?
    
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.viewIsReady()
    }
        
    func setupView(_ name:String, surname:String){
        namelabel.text = name
        surnameLabel.text = surname
    }
    
    func configureWithConfig(config:ConfigWrapper){
        interactor?.configBlock?(config.config)
    }
}
