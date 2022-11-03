//
//  ParentModalTest.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

struct ParentModalTest: View {
    @State var showModal: Bool = false

      var body: some View {
        Button(action: {
          self.showModal.toggle()
        }) {
          Text("Launch Modal")
        }
        .sheet(isPresented: self.$showModal, onDismiss: {
        }) {
          PageOneContent()
            .environment(\.modalMode, self.$showModal) // < bind modalMode
        }
      }
}

struct ParentModalTest_Previews: PreviewProvider {
    static var previews: some View {
        ParentModalTest()
    }
}
