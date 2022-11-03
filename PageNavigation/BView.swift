//
//  BView.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct BView: View {
    var body: some View {
            List {
                ForEach(1...4, id: \.self) {_ in
                    NavigationLink(destination: BView()) {
                        Text("bview")
                    }
                }
            }.toolbar(content: {
                ToolbarItem(placement: .status) {
                    Text("B"+Date().description)
                }
            })
        }
}

struct BView_Previews: PreviewProvider {
    static var previews: some View {
        BView()
    }
}
