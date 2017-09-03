//
//  JobDetailsViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 03/09/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit

class JobDetailsViewController : UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var requirementLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var job: Job?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(job: Job) {
        super.init(nibName: "JobDetailsViewController", bundle: nil)
        self.job = job
    }
    
    override func viewDidLoad() {
        if let job = self.job {
            
            self.imageView.image = #imageLiteral(resourceName: "virtus_default_image")
            self.titleLabel.text = job.title
            self.requirementLabel.text = job.requirements
            self.descriptionLabel.text = job.description
            
            self.requirementLabel.sizeToFit()
            self.descriptionLabel.sizeToFit()
            
        }
    }
    
}
