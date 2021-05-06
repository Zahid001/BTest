//
//  MoviesDataBase.swift
//  BTest
//
//  Created by Md Zahidul Islam Mazumder on 6/5/21.
//

import Foundation

struct MoviesDataBase : Codable {
    let page : Int?
    let results : [Results]?
    let total_pages : Int?
    let total_results : Int?
}


struct Results : Codable,Identifiable {
//    let adult : Bool?
//    let backdrop_path : String?
//    let genre_ids : [Int]?
    let id : Int?
    let original_language : String?
    let original_title : String?
    let overview : String?
//    let popularity : Double?
    let poster_path : String?
//    let release_date : String?
//    let title : String?
//    let video : Bool?
//    let vote_average : Int?
//    let vote_count : Int?
}
