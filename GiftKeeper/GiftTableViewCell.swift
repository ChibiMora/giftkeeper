//
//  GiftTableViewCell.swift
//  GiftKeeper
//
//  Created by Crystal Mora on 3/30/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import UIKit

class GiftTableViewCell: UITableViewCell {

    @IBOutlet weak var giftImageView: UIImageView!

    func setup(gift: Gift) {
        switch gift.state {
        case .Idea:
            giftImageView.image = UIImage(named: "ideaIcon")
        case .Archived:
            giftImageView.image = UIImage(named: "archiveIcon")
        case .Purchased:
            giftImageView.image = UIImage(named: "giftIcon")
        }
    }
}