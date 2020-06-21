//
//  ViewController.swift
//  VersiApp
//
//  Created by tarek hamed  on 6/13/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import UIKit

class TrendingVC: UIViewController  , UITableViewDelegate , UITableViewDataSource {
    
    var arr = [Dictionary<String , Any>]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        DownloadService.instatance.downloadTrendingRepoDictArray { (response) in
            self.arr = response
            print(response)
        }
        tableView.reloadData()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "trendingRepoCell") as? TrendingRepoCell {
            
            cell.configureCell(repo: Repo(name: "hello", description: "hhhh", numberOfForks: 12, language: "C", numberOfContributors: 12, repoUrl: "ddd", image: UIImage(named : "searchIconLarge")! ) )
            return cell
        }
        return UITableViewCell()
    }
}

