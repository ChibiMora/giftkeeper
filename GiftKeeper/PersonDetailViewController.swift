//
//  PersonDetailViewController.swift
//  GiftKeeper
//
//  Created by Crystal Mora on 3/23/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var personDetailTableView: UITableView!

    @IBOutlet weak var personDetailScreenSegmentedBar: UISegmentedControl!
    
      private let giftCellIdentifier = "Gift"
      private let ideallIdentifier = "Idea"
      private let archiveCellIdentifier = "Archive"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        personDetailTableView.delegate = self
        personDetailTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table View Datasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
           return "Purchased"
        } else if section == 1 {
            return "Ideas"
        } else if section == 2 {
            return "Archive"
        }
        
        return nil
    }
    
    //MARK: Table View Delegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let giftCell = tableView.dequeueReusableCellWithIdentifier("Gift") as? GiftTableViewCell {
            
            var fakeGift: Gift!
            if( indexPath.row == 0 ) {
                fakeGift = Gift(state: .Idea)
            giftCell.setup(fakeGift)
            return giftCell
        } else if ( indexPath.row == 1) {
            fakeBought = Gift(state: .Purchased)
        }
        giftcell.setup(fakeBought)
        return giftCell
      }else if (indexPath.row == 2) {
        fakeArchive = Gift(state: .Archived)
    }
        gifCell.setup(fakeArchive)
    return giftCell
}
    
        return UITableViewCell()
    }
    
    
    

}

