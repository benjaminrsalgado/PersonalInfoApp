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
            TitleView()
            ProfileImageView()
            InfoSectionView()
        
        }
    }
}

// ✅ Vista del título
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
            .frame(width: 12, height: 20)
    }
}

// ✅ Vista de la información
struct InfoSectionView: View {
    var body: some View {
     
    }
}


#Preview {
    ContentView()
}
