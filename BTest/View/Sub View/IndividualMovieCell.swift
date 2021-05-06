//
//  IndividualMovieCell.swift
//  BTest
//
//  Created by Md Zahidul Islam Mazumder on 6/5/21.
//

import SwiftUI

struct IndividualMovieCell: View {
    
    let result:Results
    
    var body: some View {
        HStack{
            
            VStack{
                Spacer()

                if let imgExtension = result.poster_path {
                    Image(systemName: "photo")

                        .data(url: (URL(string: "\(ApiConstant.imgRoot)\(imgExtension)") ?? URL(string: ApiConstant.dummyImgUrl ))! )
                        .resizable()
                        .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }
                else{
                    Image(systemName: "photo")
                        .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                }
                
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 5){
                Text(result.original_title ?? "")
                
                Text(result.overview ?? "")
                    .font(.caption)
                
                Spacer()
            }
            
        }
    }
}

//struct IndividualMovieCell_Previews: PreviewProvider {
//    static var previews: some View {
//        IndividualMovieCell()
//    }
//}


