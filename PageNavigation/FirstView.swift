//
//  FirstView.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
            NavigationView {
                List {
                    ForEach(1...4, id: \.self) {_ in
                        NavigationLink(destination: AView()) {
                            Text("root")
                        }
                    }
                }.navigationBarTitle("Home", displayMode: .inline)
            }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
