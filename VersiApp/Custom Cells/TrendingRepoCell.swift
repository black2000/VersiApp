//
//  TrendingCell.swift
//  VersiApp
//
//  Created by tarek hamed  on 6/13/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit

class TrendingRepoCell: UITableViewCell {

    private var repoUrl : String?
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var numberOfForks: UILabel!
    @IBOutlet weak var programmingLanguage: UILabel!
    @IBOutlet weak var numberOfContributors: UILabel!
    @IBOutlet weak var viewReadMeBtn:  UIButton!
    
    func configureCell(repo : Repo) {
        repoNameLabel.text = repo.name
        repoDescriptionLabel.text = repo.description
        repoImageView.image = repo.image
        numberOfForks.text = "\(repo.numberOfForks)"
        programmingLanguage.text = repo.language
        numberOfContributors.text = "\(repo.numberOfContributors)"
        repoUrl = repo.repoUrl
    }
}
