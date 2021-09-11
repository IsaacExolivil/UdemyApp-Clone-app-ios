//
//  ContentView.swift
//  UdemyApp
//
//  Created by Isaac Loez on 10/09/21.
//

import SwiftUI

struct ContentView: View {
    
    var imageName: String
    var authorName: String
    var courseTitle: String
    var originalPrice: String
    var discountPrice: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
            VStack(alignment: .leading) {
                Text(authorName)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text(courseTitle.uppercased())
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                HStack{
                
                Text(discountPrice)
                    .font(.subheadline)
                    .foregroundColor(.primary)
                    Text(originalPrice)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .strikethrough()
                }
            }
            .layoutPriority(10)
                Spacer()
            }.padding()
        }
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2)))
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(imageName: "card", authorName: "Jose Isaac Chin", courseTitle: "Curso de aplicación de uber android desde 0 a experto", originalPrice: "399", discountPrice: "199")
        ContentView(imageName: "card", authorName: "Jose Isaac Chin", courseTitle: "Curso de aplicación de uber android desde 0 a experto", originalPrice: "399", discountPrice: "199")
        ContentView(imageName: "card", authorName: "Jose Isaac Chin", courseTitle: "Curso de aplicación de uber android desde 0 a experto", originalPrice: "399", discountPrice: "199")
    }
}
