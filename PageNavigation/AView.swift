//
//  AView.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct AView: View {
    var body: some View {
            List {
                ForEach(1...4, id: \.self) {_ in
                    NavigationLink(destination: BView()) {
                        Text("aview")
                    }
                }
            }.toolbar(content: {
                ToolbarItem(placement: .status) {
                    Text("A")
                }
            })
        }
}

struct AView_Previews: PreviewProvider {
    static var previews: some View {
        AView()
    }
}
