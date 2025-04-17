//
//  ContentView.swift
//  PersonalInfoApp
//
//  Created by Benjamin Rojo on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Press Me") {
                print("Button was pressed!")
            }
            
            Button(action: {
                print("Button tapped!")
            }) {
                Label("Tap Meee!!!", systemImage: "hand.thumbsup.fill")
            }
            Button(action: {
                print("Styled button pressed!")
            }) {
                Text("Custom Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(40)
            }
            Button("Bordered Button") {
                print("Bordered button pressed!")
            }
            .buttonStyle(.borderedProminent)
        }
        Button(action: {
            print("Image button pressed!")
        }) {
            Image(systemName: "star.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
        }
        Button("Disabled Button") {
            print("This won't be triggered.")
        }
        .disabled(true)
        VStack(spacing: 20) {
           
            Button("Bordered") {
                print("Botón con borde gris")
            }
            .buttonStyle(.bordered)

            Button("Prominent") {
                print("Botón azul")
            }
            .buttonStyle(.borderedProminent)

          
            Button("Plano") {
                print("Botón sin estilo")
            }
            .buttonStyle(.plain)
        }
        Button(action: {
            print("Botón tocado")
        }) {
            Text("Mi Botón Rojo")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(12)
        }
        .padding()
        .padding()
    }
}

#Preview {
    ContentView()
}
