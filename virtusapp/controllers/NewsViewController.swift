//
//  NewsViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 30/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage

class NewsViewController : UITableViewController {
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var events = Array<Event>()
    
    override func viewDidLoad() {
        EventProxy.getEvents({ (data, success) in
            self.spinner.stopAnimating()
            if (success) {
                self.events = Event.parse(json: data)
                self.tableView.reloadData()
            } else {
                print("Error on load events")
            }
        });
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardTableViewCell
        let event = events[indexPath.row]
        
        cell.titleLabel?.text = event.title
        cell.descriptionLabel?.text = event.description
        cell.descriptionLabel.sizeToFit()
        
        if let imageUrl = event.imageUrl {
            cell.cellImage?.sd_setImage(with: URL(string: imageUrl), placeholderImage: #imageLiteral(resourceName: "virtus_default_image"))
        } else {
            cell.cellImage?.image = #imageLiteral(resourceName: "virtus_default_image")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let navigationController = navigationController {
            let event = events[indexPath.row]
            let eventDetailsViewController = EventDetailsViewController(event: event)
            navigationController.pushViewController(eventDetailsViewController, animated: true)
        }
    }
    
}
