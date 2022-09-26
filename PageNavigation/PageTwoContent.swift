//
//  PageTwoContent.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct PageTwoContent: View {
    @Environment (\.presentationMode) var presentationMode

      var body: some View {
        NavigationView {
          VStack {
            Text("This should dismiss the modal. But it just pops the NavigationView")
              .padding()

            Button(action: {
              // How to dismiss parent modal here instead
              self.presentationMode.wrappedValue.dismiss()
            }) {
              Text("Finish")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
          }
          .navigationBarTitle("Page Two")
        }
      }
}

struct PageTwoContent_Previews: PreviewProvider {
    static var previews: some View {
        PageTwoContent()
    }
}
