//
//  ContentView.swift
//  ToDo List
//
//  Created by Scholar on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("ToDo List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .bold()
                }
            }
            .padding()
            
            Spacer()
        } // end of VStack
        
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
