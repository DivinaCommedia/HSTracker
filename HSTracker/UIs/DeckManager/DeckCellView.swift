//
//  DeckCellView.swift
//  HSTracker
//
//  Created by Benjamin Michotte on 24/02/16.
//  Copyright © 2016 Benjamin Michotte. All rights reserved.
//

import Foundation

class DeckCellView: NSView {

    @IBOutlet weak var image: NSImageView!
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var moreButton: NSButton!
    var selected = true

    var deck: Deck?
    var color: NSColor?

    override func drawRect(dirtyRect: NSRect) {
        if var color = color {
            if !selected {
                color = color.darken(0.50)
            }
            color.set()
            NSRectFill(dirtyRect)
        }
        super.drawRect(dirtyRect)
    }


}