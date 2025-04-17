//
//  ContentView.swift
//  PersonalInfoApp
//
//  Created by Benjamin Rojo on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mostrarTexto = false // 🔘 Al principio el texto no se muestra

        var body: some View {
            VStack(spacing: 20) {
                Button("Press Meee") {
                    mostrarTexto = true // ✅ Cambia el valor cuando tocas el botón
                }
                .font(.title2)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)

                if mostrarTexto {
                    Text("¡gracias por apretar el texto ! 🎉")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    
}

#Preview {
    ContentView()
}
