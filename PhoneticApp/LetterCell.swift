//
//  LetterCell.swift
//  PhoneticApp
//
//  Created by John Moshakis on 2016-12-16.
//  Copyright © 2016 John Moshakis. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

class LetterCell : UICollectionViewCell
{
    var textLabel: UILabel!
    
    func setup()
    {
        textLabel = UILabel();
        self.contentView.addSubview(textLabel);
        
        var insets = UIEdgeInsets();
        insets.top = 8.0
        insets.left = 16.0
        insets.bottom = 8.0
        insets.right = 16.0
        
        self.textLabel.autoPinEdgesToSuperviewEdges(with: insets);

    }
    

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    
}
