//
//  contentsCollectionViewCell.swift
//  youtubeLikeSample0001
//
//  Created by apple on 2018/12/11.
//  Copyright © 2018 com.nainai0722. All rights reserved.
//

import UIKit

class contentsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var thumnailImage: UIImageView!
    
    @IBOutlet weak var presenterIdonImage: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.movieDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    }

}
