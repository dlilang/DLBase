//
//  Array+DL.swift
//
//  数组扩展
//
//  Created by dlilang on 16/5/28.
//

import UIKit

// MARK: 扩展二维模型数组下标
public extension _ArrayType where Generator.Element == [DLBaseModel] {
    subscript(indexPath:NSIndexPath) -> DLBaseModel {
        return self[indexPath.section][indexPath.row]
    }
}

// MARK: 扩展一维模型数组下标
public extension _ArrayType where Generator.Element == DLBaseModel {
    subscript(indexPath:NSIndexPath) -> DLBaseModel {
        return self[indexPath.row]
    }
}

// MARK: 扩展UInt8数组转成MD5字符串
public extension _ArrayType where Generator.Element == UInt8 {
    func md5() -> String {
        return DLMD5(self as! [Generator.Element]).calculate().lazy.reduce("") {$0 + String(format:"%02x", $1)}
    }
}