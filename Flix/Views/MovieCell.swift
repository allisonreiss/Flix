//
//  MovieCell.swift
//  Flix
//
//  Created by Allison Reiss on 11/13/17.
//  Copyright © 2017 Allison Reiss. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!

    var movie: Movie! {
        didSet {
            let title = movie.title
            let overview = movie.overview
            let posterURL = movie.posterURL
            
            titleLabel.text = title
            overviewLabel.text = overview
            posterImageView.af_setImage(withURL: posterURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
