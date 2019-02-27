//
//  DetailViewController.swift
//  photoCatalog
//
//  Created by 부산광역시교육청 on 26/02/2019.
//  Copyright © 2019 부산광역시교육청. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var photoImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.photoImageView {
                let fileName = "\(detail).jpg"
                imageView.image = UIImage(named: fileName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            self.configureView()
            self.title = "불꽃놀이 사진"
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

