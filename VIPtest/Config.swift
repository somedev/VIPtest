//
//  Transmitter.swift
//  VIPtest
//
//  Created by Eduard Panasiuk on 8/12/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

typealias ModuleConfigBlock = (Any?)->()

protocol ModuleConfigReciever:class {
    var configBlock:ModuleConfigBlock? {get}
}

protocol ModuleConfigTransmitter:class {
    func configureWithConfig(config:ConfigWrapper)
}

@objc class ConfigWrapper:NSObject {
    var config:Any?
    init(config:Any?){
        self.config = config
    }
}

