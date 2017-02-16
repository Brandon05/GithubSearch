//
//  repositoryCell.swift
//  GithubDemo
//
//  Created by Brandon Sanchez on 1/30/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class repositoryCell: UITableViewCell {

    @IBOutlet weak var repositoryLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var starsLabel: UILabel!
    
    @IBOutlet weak var forksLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var starImageView: UIImageView!
    
    @IBOutlet weak var forkImageView: UIImageView!
    
    var results: GithubRepo! {
        didSet {
            repositoryLabel.text = results.name
            usernameLabel.text = results.ownerHandle
            overviewLabel.text = results.repoDescription
            starsLabel.text = String(results.stars!)
            forksLabel.text = String(results.forks!)
            let imageUrl = results.ownerAvatarURL
            avatarImageView.setImageWith(imageUrl! as URL)
            starImageView.image = UIImage(named: "star")
            forkImageView.image = UIImage(named: "fork")
            
            
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        overviewLabel.preferredMaxLayoutWidth = overviewLabel.frame.size.width
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
