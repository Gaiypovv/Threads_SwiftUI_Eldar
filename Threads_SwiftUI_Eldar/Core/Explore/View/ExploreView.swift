//
//  ExploreView.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 23/11/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var saerchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfilView(user: user)
            })
            .navigationTitile("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        EploreView()
    }
}
