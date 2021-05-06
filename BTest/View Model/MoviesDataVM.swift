//
//  MoviesDataVM.swift
//  BTest
//
//  Created by Md Zahidul Islam Mazumder on 6/5/21.
//

import Foundation

class MoviesDataVM:ObservableObject{
    
    @Published var moviesDataBase : MoviesDataBase?
    
    func getData(completionHandler: @escaping () -> Void){
        
        
        
        let url = URL(string: "\(ApiConstant.apiBaseUrl)?api_key=\(ApiConstant.apiKey)&query=marvel")!

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            DispatchQueue.main.async { [weak self] in
                do{
                    
                    self?.moviesDataBase  = try JSONDecoder().decode(MoviesDataBase.self, from: data)
                    completionHandler()
                    
                    
                }catch{
                    print("err")
                    
                }
            }
            
            
        }

        task.resume()
       
    }
}
