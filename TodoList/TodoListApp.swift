//
//  TodoListApp.swift
//  TodoList
//
//  Created by Matheus on 10/07/24.
//

import SwiftUI

/*
 MVVM Architecture
 Model - Data Point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
