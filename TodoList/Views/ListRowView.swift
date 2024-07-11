//
//  ListRowView.swift
//  TodoList
//
//  Created by Matheus on 10/07/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
    }
}

var item1 = ItemModel(title: "Item1", isCompleted: true)

#Preview {
        
    ListRowView(item: item1)
}
