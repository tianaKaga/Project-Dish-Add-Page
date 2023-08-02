//
//  Project_Dish_Add_PageApp.swift
//  Project Dish Add Page
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

@main
struct Project_Dish_Add_PageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(dishName: "", dishComment: "")
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}


//rating: .constant(4)
