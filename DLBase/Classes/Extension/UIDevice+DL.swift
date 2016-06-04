//
//  UIDevice+DL.swift
//
//  设备
//
//  Created by dlilang on 16/6/3.
//

import UIKit

var _model:String = ""
var _version:CGFloat = 0
var _simulator:Bool = false

public extension UIDevice {
    
    /** 设备机器信息 */
    var machine:String {
        var token:dispatch_once_t = 0
        dispatch_once(&token) {
            var size:Int = 0
            sysctlbyname("hw.machine", nil, &size, nil, 0)
            var m = [CChar](count:Int(size), repeatedValue:0)
            sysctlbyname("hw.machine", &m, &size, nil, 0)
            _model = String(CString:m, encoding:NSUTF8StringEncoding)!
        }
        return _model
    }
    
    /** 系统版本号 */
    var version:CGFloat {
        var token:dispatch_once_t = 0
        dispatch_once(&token) {
            _version = CGFloat((self.systemVersion as NSString).floatValue)
        }
        return _version;
    }
    
    /** 是否是模拟器 */
    var simulator:Bool {
        var token:dispatch_once_t = 0
        dispatch_once(&token) {
            _simulator = (self.machine == "x86_64" || self.machine == "i386")
        }
        return _simulator
    }
    
}
