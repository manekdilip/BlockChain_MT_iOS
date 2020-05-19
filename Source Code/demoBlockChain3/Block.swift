//
//  Block.swift
//  demoBlockChain3
//
//  Created by Devubha Manek on 12/05/20.
//  Copyright © 2020 Devubha Manek. All rights reserved.
//

import UIKit

class Block {
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
