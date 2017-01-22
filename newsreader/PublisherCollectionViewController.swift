//
//  PublisherCollectionViewController.swift
//  newsreader
//
//  Created by Conny Yang on 22/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit
import SafariServices


class PublisherCollectionViewController: UICollectionViewController {
    
    var publishers : Publishers{
        return Publishers()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let collectionViewWidth = collectionView?.frame.width
        let itemWidth = (collectionViewWidth! - StoryBoard.leftAndRightPaddings) / (StoryBoard.numberOfItemsPerRow)
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: itemWidth, height:
        (itemWidth + StoryBoard.titleHeightAdjustment))
        
    }

    struct StoryBoard
    {
        static let publisherCell = "Publisher Cell"
        static let headerCell = "Header Cell"
        static let leftAndRightPaddings: CGFloat = 32.0 // 3 items per row, meaning 4 paddings of 8 each
        static let numberOfItemsPerRow: CGFloat = 3.0
        static let titleHeightAdjustment: CGFloat = 30.0
    }
   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return publishers.numOfSections
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return publishers.numOfPublishers(inSection: section)
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.publisherCell, for: indexPath) as! PublisherCollectionViewCell
    
        let publisher = publishers.publisherForItem(atIndexPath: indexPath)
        cell.publisher = publisher!
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerCell, for: indexPath) as! HeaderCollectionReusableView
        let publisher = publishers.publisherForItem(atIndexPath: indexPath)
        headerView.publisher = publisher!
        
        return headerView
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let publisher = publishers.publisherForItem(atIndexPath: indexPath)
        
        if let url = publisher?.url
        {
            let sarafiVC = SFSafariViewController(url: URL(string: url)!)
            self.present(sarafiVC, animated: true, completion: nil)
        }
        
    }

}
