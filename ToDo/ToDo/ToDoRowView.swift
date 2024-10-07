//
//  ToDoView.swift
//  ToDo
//
//  Created by Rachel Dhinakar on 10/8/24.
//

import SwiftUI

struct ToDo: Identifiable {
    var id = UUID()
    var isClicked: Bool
    var text: String
}

extension ToDo {
    static var example: ToDo {
        ToDo(isClicked: false, text: "Walk the Dog")
    }
    static var exampleList: [ToDo] {
        [example, ToDo(isClicked: false, text: "Do the Dishes"), ToDo(isClicked: false, text: "Do laundery"), ToDo(isClicked: true, text: "Feed the cat")]
    }
}

struct ToDoRowView: View {
    @State var todo: ToDo
    var body: some View {
        HStack {
            Button {
                todo.isClicked.toggle()
            } label: {
                Image(systemName: todo.isClicked ? "checkmark.square.fill" : "square")
            }
            TextField("", text: $todo.text)
        }
        
    }
    
}

#Preview {
    @Previewable @State var todo = ToDo(isClicked: false, text: "do Dishes")
    ToDoRowView(todo: $todo)
}
