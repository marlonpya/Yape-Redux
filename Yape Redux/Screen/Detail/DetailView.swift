//
//  DetailView.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import SwiftUI

struct DetailView: View {
    let food: Food
    
    @SwiftUI.State var showMap = false
    
    var body: some View {
        NavigationView{
            VStack {
                Text(food.name ?? "")
                    .font(.title)
                    .fontWeight(.medium)
                Form {
                    Section{
                        HStack {
                            if food.image != nil {
                                AsyncImage(url: URL(string: food.image!), scale: 2) { image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fill)
                                } placeholder: { ProgressView().progressViewStyle(.circular) }
                            }
                        }
                        HStack {
                            Text("Descripción")
                            Spacer()
                            Text(food.description ?? "")
                                .foregroundColor(.gray)
                                .frame(alignment: .leading)
                        }
                        
                        HStack {
                            Button("Ver Mapa") {
                                showMap.toggle()
                            }
                            .sheet(isPresented: $showMap) {
                                MapView(mark: Mark.map(food: self.food))
                                    .presentationDetents([.medium, .large])
                                    .presentationDragIndicator(.hidden)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(food: Food(id: -1,
                              name: "Sopa seca",
                              image: "image",
                              description: "description",
                              latitude: "",
                              longitude: ""))
    }
}
