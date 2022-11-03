//
//  PageTwoContent.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct PageTwoContent: View {
    @Environment (\.modalMode) var modalMode // << extract modalMode

      var body: some View {
        NavigationView {
          VStack {
            Text("This should dismiss the modal. But it just pops the NavigationView")
              .padding()

            Button(action: {
              self.modalMode.wrappedValue = false // << close modal
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
