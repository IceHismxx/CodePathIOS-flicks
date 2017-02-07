//
//  MovieCell.swift
//  codepath-flickz
//
//  Created by Kyle Leung on 1/31/17.
//  Copyright © 2017 Kyle Leung. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageViewLabel: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
