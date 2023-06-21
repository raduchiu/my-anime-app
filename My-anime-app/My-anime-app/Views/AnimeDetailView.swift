//
//  AnimeDetailView.swift
//  My-anime-app
//
//  Created by Raduchiu da Costa Amaral on 20/06/23.
//

import SwiftUI

struct AnimeDetailView: View {
    let anime: Anime
    
    var body: some View {
        
        ScrollView{
            animeImageView
            Text(anime.title)
                .font(.title)
                .padding()
        }
        .navigationTitle("Anime Details")
        .navigationBarTitleDisplayMode(.inline)
    }
    
   @ViewBuilder var animeImageView: some View {
       if let imageURL = URL(string: "https://static.wikia.nocookie.net/gintama/images/a/a2/Screen-6.jpg/revision/latest/scale-to-width-down/1000?cb=20200203021409&path-prefix=pt") {
           AsyncImage(url: imageURL) { image in
               image.resizable()
                   .aspectRatio(contentMode: .fit)
           } placeholder: {
               ProgressView()
           }
       } else {
           Text ("Image is not available")
       }
            
    }
}

struct AnimeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeDetailView(anime: animePreview)
    }
}
