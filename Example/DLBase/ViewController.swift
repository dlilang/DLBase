//
//  ViewController.swift
//  DLBase
//
//  Created by dlilang on 06/04/2016.
//  Copyright (c) 2016 dlilang. All rights reserved.
//

import UIKit
import DLBase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("1234567890".md5())
        
        Single.share().xxx()
        
        var models:Array<Array<Model>> = Array<Array<Model>>()
        var ms:Array<Model> = Array<Model>()
        for i in 0 ..< 10 {
            let model = Model()
            model.name="name: \(i)"
            ms.append(model)
        }
        
        models.append(ms)
        
        print("\(ms[IndexPath(row:5, section:0)].name!)")
        print("\((models[IndexPath(row:5, section:0)] as! Model).name!)")
    }
}

class Model:DLBaseModel {
    var name:String?
}

class Single: DLBaseSingle {
    
    class func share() -> Single {
        return Single.single() as! Single
    }
    
    func xxx(){
        print("1234567890")
    }
    
}
