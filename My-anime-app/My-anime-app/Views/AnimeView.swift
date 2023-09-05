//
//  AnimeView.swift
//  My-anime-app
//
//  Created by Raduchiu da Costa Amaral on 20/06/23.
//

import SwiftUI

struct AnimeView: View {
    let anime: Anime
    
    var body: some View {
        NavigationLink {
            //comming soon
        } label: {
            Text(anime.title)

        }

    }
}

struct AnimeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeView(anime: animePreview)
    }
}
