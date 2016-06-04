//
//  DLBaseSingle.swift
//
//  单列基础
//
//  Created by dlilang on 16/5/28.
//

import UIKit

public class DLBaseSingle: DLBaseObject {

    // 构造私有化
    private override init() {
        super.init()
    }
    /** 单列 */
    public class func single() -> DLBaseSingle {
        struct DLBS {
            static var instance:DLBaseSingle?
            static var token:dispatch_once_t = 0
        }
        dispatch_once(&DLBS.token) {
            DLBS.instance = DLBaseSingle()
        }
        return DLBS.instance!
    }
    
}
