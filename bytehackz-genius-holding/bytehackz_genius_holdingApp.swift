//
//  bytehackz_genius_holdingApp.swift
//  bytehackz-genius-holding
//
//  Created by Jia Chen Yee on 15/11/23.
//

import SwiftUI

@main
struct bytehackz_genius_holdingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UIApplication.shared.isIdleTimerDisabled = true
                }
        }
    }
}
