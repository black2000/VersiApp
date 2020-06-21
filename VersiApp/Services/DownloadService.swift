//
//  DownloadService.swift
//  VersiApp
//
//  Created by tarek hamed  on 6/14/20.
//  Copyright © 2020 tarek hamed . All rights reserved.
//

import Foundation
import Alamofire

class DownloadService {
    
    static let instatance = DownloadService()
    
    
    func downloadTrendingRepoDictArray(completion : @escaping (_ repoArray :[Dictionary<String, Any>]) -> ()) {
        Alamofire.request(trendingRepoUrl).responseJSON {
            response in
            var trendingArray = [Dictionary<String , Any>]()
            guard let json = response.result.value as? Dictionary<String , Any> else {return }
            guard let repoDicArray = json["items"] as? [Dictionary<String , Any>] else {return}
            
            for repo in repoDicArray {
                if trendingArray.count <= 10 {
                    trendingArray.append(repo)
                }else {
                    break
                }
            }
            completion(trendingArray)
         }
    }
}
