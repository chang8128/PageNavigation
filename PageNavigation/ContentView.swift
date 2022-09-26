//
//  ContentView.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var showModal: Bool = false

      var body: some View {
        Button(action: {
          self.showModal.toggle()
        }) {
          Text("Launch Modal")
        }
        .sheet(isPresented: self.$showModal, onDismiss: {
          self.showModal = false
        }) {
          PageOneContent()
        }
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
