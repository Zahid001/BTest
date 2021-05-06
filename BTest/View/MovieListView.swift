//
//  MovieListView.swift
//  BTest
//
//  Created by Md Zahidul Islam Mazumder on 6/5/21.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject private var moviesDataVM = MoviesDataVM()
    
    var body: some View {
        NavigationView{

            List(moviesDataVM.moviesDataBase?.results ?? []){result in
                IndividualMovieCell(result: result)
            }
            
            .navigationBarTitle(Text("Movie List"))
            .onAppear(){
                moviesDataVM.getData {}
            }
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
