//
//  Publishers.swift
//  PrettyApple
//
//  Created by Duc Tran on 7/21/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class Publishers
{
    var publishers : [Publisher] = [Publisher]()
    var sections : [String]
    
    var numOfSections : Int{
        return sections.count
    }
    
    init()
    {
        sections = ["My Favorites", "Politics" , "Travel", "Technology"]
        publishers = self.createPublisers()
    }
    
    func createPublisers() -> [Publisher]
    {
        var publisers = [Publisher]()
        
        publisers += MyFavorites.publishers()
        publisers += Politics.publishers()
        publisers += Travel.publishers()
        publisers += Technology.publishers()
        
        return publisers
    }
    
    func numOfPublishers(inSection section: Int) -> Int
    {
        let section = sections[section]
        let publishers = self.publishers.filter { (publisher) -> Bool in
            return publisher.section == section
        }
        
        return publishers.count
    }
    
    func publishers(inSection section: Int) -> [Publisher]
    {
        let section = sections[section]
        let publishers = self.publishers.filter { (publisher) -> Bool in
            return publisher.section == section
        }
        
        return publishers
    }
    
    func publisherForItem(atIndexPath indexPath: IndexPath) -> Publisher?
    {
        if indexPath.section < sections.count
        {
            if indexPath.section > 1
            {
                let publishers = self.publishers(inSection: indexPath.section)
                
                
                return publishers[indexPath.item]
            }
            else
            {
                return publishers[indexPath.item]
            }
            
        }
        else
        {
            return nil
        }
        
    }
    
    func titleForSection(atIndexPath indexPath : IndexPath) -> String?
    {
        if indexPath.section < sections.count
        {
            return sections[indexPath.section]
        }
        else
        {
            return nil
        }
    }
    
}

class MyFavorites
{
    class func publishers() -> [Publisher]
    {
        var publishers = [Publisher]()
        publishers.append(Publisher(title: "TIME", url: "http://time.com", image: UIImage(named: "TIME")!, section: "My Favorites"))
        publishers.append(Publisher(title: "The New York Times", url: "http://www.nytimes.com", image: UIImage(named: "The New York Times")!, section: "My Favorites"))
        publishers.append(Publisher(title: "TED", url: "https://www.ted.com", image: UIImage(named: "TED")!, section: "My Favorites"))
        publishers.append(Publisher(title: "Re/code", url: "http://recode.net", image: UIImage(named: "Recode")!, section: "My Favorites"))
        publishers.append(Publisher(title: "WIRED", url: "http://www.wired.com", image: UIImage(named: "WIRED")!, section: "My Favorites"))
        return publishers
    }
}

class Politics
{
    class func publishers() -> [Publisher]
    {
        var publishers = [Publisher]()
        publishers.append(Publisher(title: "The Atlantic", url: "http://www.theatlantic.com", image: UIImage(named: "The Atlantic")!, section: "Politics"))
        publishers.append(Publisher(title: "The Hill", url: "http://thehill.com", image: UIImage(named: "The Hill")!, section: "Politics"))
        publishers.append(Publisher(title: "Daily Intelligencer", url: "http://nymag.com/daily/intelligencer/", image: UIImage(named: "Daily Intelligencer")!, section: "Politics"))
        publishers.append(Publisher(title: "Vanity Fair", url: "http://recode.net", image: UIImage(named: "Vanity Fair")!, section: "Politics"))
        publishers.append(Publisher(title: "TIME", url: "http://time.com", image: UIImage(named: "TIME")!, section: "Politics"))
        publishers.append(Publisher(title: "The Huffington Post", url: "http://www.huffingtonpost.com", image: UIImage(named: "The Huffington Post")!, section: "Politics"))
        return publishers
    }
}

class Travel
{
    class func publishers() -> [Publisher]
    {
        var publishers = [Publisher]()
        publishers.append(Publisher(title: "AFAR", url: "http://www.afar.com", image: UIImage(named: "AFAR")!, section: "Travel"))
        publishers.append(Publisher(title: "The New York Times", url: "http://www.nytimes.com", image: UIImage(named: "The New York Times")!, section: "Travel"))
        publishers.append(Publisher(title: "Men’s Journal", url: "http://www.mensjournal.com", image: UIImage(named: "Men’s Journal")!, section: "Travel"))
        publishers.append(Publisher(title: "Smithsonian", url: "http://www.smithsonianmag.com/?no-ist", image: UIImage(named: "Smithsonian")!, section: "Travel"))
        publishers.append(Publisher(title: "Wallpaper", url: "http://www.wallpaper.com", image: UIImage(named: "Wallpaper")!, section: "Travel"))
        publishers.append(Publisher(title: "Sunset", url: "http://www.sunset.com", image: UIImage(named: "Sunset")!, section: "Travel"))
        return publishers
    }
}

class Technology
{
    class func publishers() -> [Publisher]
    {
        var publishers = [Publisher]()
        publishers.append(Publisher(title: "WIRED", url: "http://www.wired.com", image: UIImage(named: "WIRED")!, section: "Technology"))
        publishers.append(Publisher(title: "Re/code", url: "http://recode.net", image: UIImage(named: "Recode")!, section: "Technology"))
        publishers.append(Publisher(title: "Quartz", url: "http://qz.com", image: UIImage(named: "Quartz")!, section: "Technology"))
        publishers.append(Publisher(title: "Daring Fireball", url: "http://daringfireball.net", image: UIImage(named: "Daring Fireball")!, section: "Technology"))
        publishers.append(Publisher(title: "MIT Technology Review", url: "http://www.technologyreview.com", image: UIImage(named: "MIT Technology Review")!, section: "Technology"))
        return publishers
    }
}















