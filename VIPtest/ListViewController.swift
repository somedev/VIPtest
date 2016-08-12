//
//  ListViewController.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import UIKit

protocol ListViewInput:class {
    func updateWithData(_ data:Array<Employee>)
    func showError(_ error:String)
}

class ListViewController: UIViewController, ListViewInput, UITableViewDataSource, UITableViewDelegate {
    var interactor:ListInteractorInput?
    private var data:Array<Employee> = []
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let reciever = segue.destination as? ModuleConfigTransmitter,
            let sender = sender as? ConfigWrapper {
            reciever.configureWithConfig(config: sender)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        interactor?.viewIsReady()
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        let employee = data[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = "\(employee.name) \(employee.surname)"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let employee = data[(indexPath as NSIndexPath).row]
        interactor?.viewSelectedEmployee(employee)
    }
    
    //ListViewInput
    func updateWithData(_ data:Array<Employee>) {
        self.data = data
        tableView.reloadData()
    }
    
    func showError(_ error:String){
        print("Error")
    }
    
}
