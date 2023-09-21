//
//  HomeView.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 20.09.2023..
//

import SwiftUI

struct HomeView: View {
   @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        VStack(spacing: 0) {
            Text("Home View")
                .padding()
            
            Button {
                viewModel.onSettingsTapped?()
            } label: {
                Text("Settings")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
