//
//  PublisherCollectionViewController.swift
//  newsreader
//
//  Created by Conny Yang on 22/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit


class PublisherCollectionViewController: UICollectionViewController {
    
    var publishers : Publishers{
        return Publishers()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    struct StoryBoard
    {
        static let publisherCell = "Publisher Cell"
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

}
