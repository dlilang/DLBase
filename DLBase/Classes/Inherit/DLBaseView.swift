//
//  DLBaseView.swift
//
//  基础view
//
//  Created by dlilang on 16/5/28.
//

import UIKit

public class DLBaseView: UIView {

    convenience public init(){
        self.init(frame:CGRectZero)
        self.loadView()
    }
    override public init(frame:CGRect) {
        super.init(frame:frame)
        self.loadView()
    }
    required public init?(coder aDecoder:NSCoder) {
        super.init(coder:aDecoder)
        self.loadView()
    }
    
}

public extension DLBaseView {
    
    public func loadView(){
        
    }
    
}
