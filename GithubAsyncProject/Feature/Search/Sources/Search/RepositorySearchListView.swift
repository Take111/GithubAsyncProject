//
//  RepositorySearchListView.swift
//  GithubAsyncProject
//
//  Created by 竹ノ内愛斗 on 2022/04/24.
//

import SwiftUI
import Entity

public struct RepositorySearchListView: View {
    
    @State private var repositories: [Repository] = [
        Repository(id: 0, name: "Swift", stargersCount: 100),
        Repository(id: 1, name: "Kotlin", stargersCount: 100),
        Repository(id: 2, name: "Dart", stargersCount: 100),
    ]
    
    @State private var searchText: String = ""
    
    public var body: some View {
        NavigationView {
            List {
                ForEach(0..<repositories.count, id: \.self) { index in
                    RepositorySearchContentView(repository: repositories[index])
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .searchable(
            text: $searchText,
            placement: .navigationBarDrawer(displayMode: .always)
        )
    }
}

public struct RepositorySearchListView_Previews: PreviewProvider {
    static public var previews: some View {
        RepositorySearchListView()
    }
}
