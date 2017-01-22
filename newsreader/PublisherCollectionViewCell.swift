//
//  PublisherCollectionViewCell.swift
//  newsreader
//
//  Created by Conny Yang on 22/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PublisherCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var publisherImage : UIImageView!

    @IBOutlet weak var publisherTitle : UILabel!
    
    var publisher : Publisher!{
        didSet{
            publisherImage.image = self.publisher.image
            publisherTitle.text = self.publisher.title
        }
    }
}
