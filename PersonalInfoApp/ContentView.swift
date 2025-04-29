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
            RemoteImageView()
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
                .lineLimit(nil) // el texto use todas las líneas que necesite (no se corta).
                .padding()
                .font(.custom("Starbim", size: 24))
                .foregroundColor(.green)
            Image(systemName: "figure.strengthtraining.traditional")
            Button(action: {
                print("Botón presionado")//Solo se imprime en consola
            }) {
                Image(systemName: "star.fill")
                    .resizable()//permite cambiar el tamaño
                    .foregroundColor(.orange)
                    .background(.yellow)
                    .cornerRadius(80)
                    .frame(width: 60, height: 60)//tamaño
            }
        }
      
    }
}

// imagen remota desde internet
struct RemoteImageView: View{
    var body: some View{
        VStack{
            AsyncImage(url: URL(string: "https://trainingstation.co.uk/cdn/shop/files/339593575_152587684408014_5402981934113218981_n_f284f416-172d-490f-84fa-6d0d156f6ffa_1600x.jpg?v=1717338698")) { image in image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 500, height: 219)
                    .padding()
            //Este es el boton con una imagen de la red
            Button(action: {
                print("Botón de imagen de red presionado")
            }) {
                AsyncImage(url: URL(string: "https://d2bzx2vuetkzse.cloudfront.net/fit-in/0x450/unshoppable_producs/323341c6-691c-4732-950c-e11b2e86f5b5.png")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10) // Bordes redondeados
                } placeholder: {
                    ProgressView() // Mientras carga
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(15)
                }
        }

}



#Preview {
    ContentView()
}
