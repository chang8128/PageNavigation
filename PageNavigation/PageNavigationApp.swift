//
//  PageNavigationApp.swift
//  PageNavigation
//
//  Created by 常志平 on 26/9/22.
//

import SwiftUI

@main
struct PageNavigationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


// define env key to store our modal mode values
struct ModalModeKey: EnvironmentKey {
    static let defaultValue = Binding<Bool>.constant(false) // < required
}

// define modalMode value
extension EnvironmentValues {
    var modalMode: Binding<Bool> {
        get {
            return self[ModalModeKey.self]
        }
        set {
            self[ModalModeKey.self] = newValue
        }
    }
}
