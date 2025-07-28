//
//  ContentView.swift
//  ToDoList
//
//  Created by Sahana on 7/28/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    
    
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                
                Button {
                    withAnimation {
                        showNewTask = true
                }

                } label: {
                        Text("+")
                }
                
                .font(.title)
                .fontWeight(.bold)
                
                
                
            }
            .padding()
            Spacer()
            List {
                ForEach (toDos) { toDoItem in
                        Text(toDoItem.title)
                    }
            }
            
        }
        
        if showNewTask {
            NewToDoView()
        }
        @Query var toDos: [ToDoItem]
    }
}

#Preview {
    ContentView()
}
