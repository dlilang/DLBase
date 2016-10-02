//
//  DLBaseCollectionCell.swift
//  Pods
//
//  Created by dlilang on 16/6/3.
//
//

import UIKit

open class DLBaseCollectionCell: UICollectionViewCell {
    
    convenience public init(){
        self.init(frame:CGRect.zero)
    }
    override public init(frame:CGRect) {
        super.init(frame:frame)
        self.loadView()
    }
    required public init?(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
        self.loadView()
    }
    
}

public extension DLBaseCollectionCell {
    func loadView(){
        
    }
}
