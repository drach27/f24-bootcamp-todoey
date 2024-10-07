//
//  ToDoListView.swift
//  ToDo
//
//  Created by Rachel Dhinakar on 10/8/24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var toDoList = ToDo.exampleList
    @State private var toDoText = ""
    var body: some View {
        
        NavigationStack {
            List {
                Section("Edit"){
                    TextField("Enter Todo", text: $toDoText)
                        .onSubmit {
                            toDoList.append(ToDo(isClicked: false, text: toDoText))
                            toDoText = ""
                        }
                }
                Section("ToDo"){
                    ForEach(toDoList) { $todo in
                        ToDoRowView(todo: $todo)
                    }
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            
                        }
                    }
                }
            }
            .navigationTitle("ToDoey")
        }
    }
}

#Preview {
    ToDoListView()
}
