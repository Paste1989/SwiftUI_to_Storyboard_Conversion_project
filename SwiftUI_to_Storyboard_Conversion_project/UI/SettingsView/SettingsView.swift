//
//  SettingsView.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 20.09.2023..
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var viewModel: SettingsViewModel
    var body: some View {
        Text("Settings View")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewModel: SettingsViewModel())
    }
}
