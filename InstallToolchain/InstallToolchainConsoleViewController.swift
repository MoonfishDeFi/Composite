//
//  InstallToolchainConsoleViewController.swift
//  Composite
//
//  Created by Ronald "Danger" Mannak on 3/14/19.
//  Copyright © 2019 A Puzzle A Day. All rights reserved.
//

import Cocoa

final class InstallToolchainConsoleViewController: NSViewController {
    
    @IBOutlet var textView: NSTextView! {
        didSet {
            
            assert(Thread.isMainThread)
            // View isn't loaded if console is collapsed
            // Fetch output in case it has changed since the last time
            // the console was shown.
            textView.string = output
            textView.scrollToEndOfDocument(nil)
        }
    }
    
    var output: String = "" {
        didSet {
            
            assert(Thread.isMainThread)
            guard textView != nil else { return }
            textView.string = output
            textView.scrollToEndOfDocument(nil)
        }
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()        
        // Do view setup here.
    }
    
}
