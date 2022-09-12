//
//  ContentView.swift
//  ButttonCamp
//
//  Created by Bishowjit Ray on 12/9/22.
//

import SwiftUI

struct ContentView: View {
   @State var title: String = ""
    var body: some View {
        
        VStack(spacing:20){
            
             Text(title)
            
            Button("Press me!") {
                self.title = "Button was Pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button @2 was pressed"
            }, label: {
                Text("save" .uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.indigo)
                    
                    )
            })
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish" .uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 3.0)
                    )
            })
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
