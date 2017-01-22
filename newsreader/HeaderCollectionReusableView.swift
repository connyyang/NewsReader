//
//  HeaderCollectionReusableView.swift
//  newsreader
//
//  Created by Conny Yang on 22/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    var publisher : Publisher!{
        didSet{
            titleLabel.text = publisher.section
        }
    }
}
