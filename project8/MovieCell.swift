//
//  MovieCell.swift
//  project8
//
//  Created by Mac on 2017/10/25.
//  Copyright © 2017年 Sunny, Lee. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
  // MARK: - IBOutlets
  @IBOutlet weak var movieLabel: UILabel!
  
  // MARK: - Properties
  var movie: Movie? {
    didSet{
      guard let movie = movie else { return }
      movieLabel.text = movie.movieName
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
