//
//  RepositorySearchContentView.swift
//  GithubAsyncProject
//
//  Created by 竹ノ内愛斗 on 2022/04/24.
//

import SwiftUI
import Entity

struct RepositorySearchContentView: View {
    
    let repository: Repository
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(repository.name)
                    .font(.headline)
                    .lineLimit(2)
                Spacer()
                Image("")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            HStack {
                Text("Language")
                    .font(.caption)
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text(String(repository.stargersCount))
                        .font(.callout)
                }
            }
        }
        .padding()
    }
}

struct RepositorySearchContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepositorySearchContentView(repository: Repository(id: 0, name: "Swift", stargersCount: 200))
    }
}
