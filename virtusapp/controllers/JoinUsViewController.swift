//
//  JoinUsViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 30/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit

class JoinUsViewController : UITableViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var jobs = Array<Job>()
    
    override func viewDidLoad() {
        JobProxy.getJobs({ (data, success) in
            self.spinner.stopAnimating()
            if (success) {
                self.jobs = Job.parse(json: data)
                self.tableView.reloadData()
            } else {
                print("Error on load events")
            }
        });
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardTableViewCell
        let job = jobs[indexPath.row]
        
        cell.titleLabel?.text = job.title
        cell.descriptionLabel?.text = job.description
        cell.descriptionLabel.sizeToFit()
        cell.cellImage?.image = #imageLiteral(resourceName: "virtus_default_image")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let navigationController = navigationController {
            let job = jobs[indexPath.row]
            let jobDetailsViewController = JobDetailsViewController(job: job)
            navigationController.pushViewController(jobDetailsViewController, animated: true)
        }
    }
    
}
