//
//  DLBaseSingle.swift
//
//  单列基础
//
//  Created by dlilang on 16/5/28.
//

import UIKit

open class DLBaseSingle:DLBaseObject {

    /** 单列 */
    required override public init(){}
    static var instance:DLBaseSingle?
    open class func single() -> DLBaseSingle {
        if instance == nil {
            instance = self.init()
        }
        return instance!
    }
    
}
