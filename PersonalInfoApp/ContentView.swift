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
            .clipShape(Circle())
            .shadow(radius: 10)
            .border(Color.blue, width: 4)
            .frame(width: 12, height: 10)
    }
}

// ✅ Vista de la información
struct InfoSectionView: View {
    var body: some View {
        HStack{
            Text("This is the first timeee ")
                .font(.custom("Starbim", size: 30))
                .foregroundColor(.blue)
                .padding()
        }
      
    }
}


#Preview {
    ContentView()
}
