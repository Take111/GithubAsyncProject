//
//  RepositorySearchListView.swift
//  GithubAsyncProject
//
//  Created by 竹ノ内愛斗 on 2022/04/24.
//

import SwiftUI

public struct RepositorySearchListView: View {
    public var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("RepositoryRepositoryRepositoryRepository")
                    .font(.headline)
                    .lineLimit(2)
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
                    Text("100")
                        .font(.callout)
                }
            }
        }
        .padding()
    }
}

public struct RepositorySearchListView_Previews: PreviewProvider {
    static public var previews: some View {
        RepositorySearchListView().previewLayout(.sizeThatFits)
    }
}
