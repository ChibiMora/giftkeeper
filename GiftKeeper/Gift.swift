//
//  Gift.swift
//  GiftKeeper
//
//  Created by Crystal Mora on 3/30/16.
//  Copyright © 2016 Crystal Mora. All rights reserved.
//

import Foundation

enum GiftStates {
    case Idea, Purchased, Archived
}

class Gift {
    var state: GiftStates
    
    init(state: GiftStates) {
        self.state = state
    }
}

