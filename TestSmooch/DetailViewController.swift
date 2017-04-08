//
//  DetailViewController.swift
//  TestSmooch
//
//  Created by Rémy Virin on 07/04/2017.
//  Copyright © 2017 Prynt. All rights reserved.
//

import UIKit
import Smooch

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var label: UILabel!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = String(describing: Smooch.conversation()?.unreadCount) + " unread(s)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    @IBAction func openSmooch(_ sender: Any) {
        Smooch.show()
    }


}

