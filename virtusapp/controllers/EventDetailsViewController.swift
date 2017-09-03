//
//  EventDetailsViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 02/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit
import SDWebImage

class EventDetailsViewController : UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    var event: Event?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(event: Event) {
        super.init(nibName: "EventDetailsViewController", bundle: nil)
        self.event = event
    }
    
    override func viewDidLoad() {
        if let event = self.event {
            self.titleLabel.text = event.title
            
            self.descriptionLabel.text = event.description
            self.descriptionLabel.sizeToFit()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy"
            self.dataLabel.text = dateFormatter.string(from: event.date)
            print(event.date)
            
            if let imageUrl = event.imageUrl {
                self.imageView.sd_setImage(with: URL(string: imageUrl), placeholderImage: #imageLiteral(resourceName: "virtus_default_image"))
            } else {
                self.imageView.image = #imageLiteral(resourceName: "virtus_default_image")
            }
        }
    }
    
}
