//
//  PageOneContent.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct PageOneContent: View {
    var body: some View {
        NavigationView {
          VStack {
            Text("I am Page One")
          }
          .navigationBarTitle("Page One")
          .navigationBarItems(
            trailing: NavigationLink(destination: PageTwoContent()) {
              Text("Next")
            })
          }
      }
}

struct PageOneContent_Previews: PreviewProvider {
    static var previews: some View {
        PageOneContent()
    }
}
