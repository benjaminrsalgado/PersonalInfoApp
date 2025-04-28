//
//  ContentView.swift
//  PersonalInfoApp
//
//  Created by Benjamin Rojo on 15/04/25.
//
import SwiftUI

//Estructura general!!!!
struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            ProfileImageView()
            InfoSectionView()
            Spacer()
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            Text("Benjamin Rojo")
                .font(.custom("Starbim", size: 30))
                .foregroundColor(.red)
                .padding()
        }
    }
}

// ✅ Vista de la imagen de perfil
struct ProfileImageView: View {
    var body: some View {
        Image("alien")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(radius: 10)
    }
}

// ✅ Vista de la información, ME QUEDE AQUIII
struct InfoSectionView: View {
    var body: some View {
        HStack{
            Text("I love going to the gym, and gain weight, i love all about fitness, and i follow science based training like Jeff Nippard.")
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding()
                .font(.custom("Starbim", size: 30))
                .foregroundColor(.blue)
            Image(systemName: "figure.strengthtraining.traditional")
            Button(action: {
              
                print("Botón presionado")
            }) {
                Image(systemName: "dumbbell")
                    .resizable()
                    .foregroundColor(.orange)
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
        }
      
    }
}


#Preview {
    ContentView()
}
