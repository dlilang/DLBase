//
//  DLBaseCell.swift
//
//  基础cell
//
//  Created by dlilang on 16/5/31.
//

import UIKit

public class DLBaseCell: UITableViewCell {
    
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier:reuseIdentifier)
        self.loadView()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        self.loadView()
    }
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.loadView()
    }

}

public extension DLBaseCell {
    public func loadView(){
        
    }
}
