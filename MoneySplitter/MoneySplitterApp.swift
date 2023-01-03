//
//  MoneySplitterApp.swift
//  MoneySplitter
//
//  Created by Robert Sandru on 31.12.2022.
//

import SwiftUI

@main
struct MoneySplitterApp: App {
    let persistenceController = PersistenceController.shared
    
    @State var navigationCoordinator = NavigationCoordinator()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationCoordinator)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
