//
//  UIDevice+DL.swift
//
//  设备
//
//  Created by dlilang on 16/6/3.
//

import UIKit

/**  */
let model:String = {
    var size:Int = 0
    sysctlbyname("hw.machine", nil, &size, nil, 0)
    var m = [CChar](repeating: 0, count: Int(size))
    sysctlbyname("hw.machine", &m, &size, nil, 0)
    return String(cString:m, encoding: String.Encoding.utf8)!
}()
/**  */
let version:CGFloat = {
    return CGFloat((UIDevice.current.systemVersion as NSString).floatValue)
}()
/**  */
let simulator:Bool = {
    return (UIDevice.current.machine == "x86_64" || UIDevice.current.machine == "i386")
}()

public extension UIDevice {
    
    /** 设备机器信息 */
    var machine:String {
        return model
    }
    
    /** 系统版本号 */
    var version:CGFloat {
        return version
    }
    
    /** 是否是模拟器 */
    var simulator:Bool {
        return simulator
    }
    
}
