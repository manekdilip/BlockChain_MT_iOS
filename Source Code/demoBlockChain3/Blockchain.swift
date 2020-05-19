//
//  Blockchain.swift
//  demoBlockChain3
//
//  Created by Devubha Manek on 12/05/20.
//  Copyright © 2020 Devubha Manek. All rights reserved.
//

import UIKit

class Blockchain {
    var chain = [Block]()
    func createGenesisBlock(data:String) {
        let genesisBlock = Block()
        genesisBlock.hash = genesisBlock.generateHash()
        genesisBlock.data = data
        genesisBlock.previousHash = "0000"
        genesisBlock.index = 0
        chain.append(genesisBlock)
    }
    
    func createBlock(data:String) {
        let newBlock = Block()
        newBlock.hash = newBlock.generateHash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count-1].hash
        newBlock.index = chain.count
        chain.append(newBlock)
    }
}
