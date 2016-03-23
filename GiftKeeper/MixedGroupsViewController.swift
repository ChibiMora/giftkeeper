//
//  MixedGroupsViewController.swift
//  GiftKeeper
//
//  Created by Crystal Mora on 3/6/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class MixedGroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
   
    
    private let groupCellIdentifier = "Group"
    private let personCellIdentifier = "Person"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Table View Datasource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var identifier: String!
        let row: Int = indexPath.row
        
        if row == 0 {
            identifier = groupCellIdentifier
        } else if row == 1 {
            identifier = personCellIdentifier
        }
        
        if let cell = tableView.dequeueReusableCellWithIdentifier(identifier) {
            if let groupCell = cell as? GroupTableViewCell {
                groupCell.groupLabel.text = "Game Night"
                groupCell.groupImage.image = UIImage(named:"squirrel")
                
                return groupCell
            } else if let personCell = cell as? PersonTableViewCell {
                personCell.personLabel.text = "Me" 
                
                return personCell
            }
        }
        
        return UITableViewCell()
    }

    
}