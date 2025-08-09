//
//  MenuItemView.swift
//  LittleLemonCapstoneIOS
//
//  Created by kedk on 9/9/23.
//

import SwiftUI

struct MenuItemView:View{
    let dish:Dish
    
    init(dish: Dish) {
        self.dish = dish
    }
    
    var body: some View{
        ZStack{
            HStack{
                VStack(alignment: .leading){
                    Text("\(dish.title ?? "")")
                        .font(.karlaLeadText)
                        .padding(EdgeInsets(top: 2, leading: 0, bottom: 2, trailing: 0))
                    Text("\(dish.desc ?? "")")
                        .lineLimit(2)
                        .fontWeight(.light)
                        .font(.karlaParagraph)
                        .foregroundColor(.primaryBlue)
                    Text("$ \(dish.price ?? "")")
                        .fontWeight(.heavy)
                        .font(.karlaLeadText)
                        .foregroundColor(.primaryBlue)
                        .padding(EdgeInsets(top: 2, leading: 0, bottom: 2, trailing: 0))
                }
                Spacer()
                AsyncImage(
                    url:URL(string: "\(dish.image ?? "")"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 100, maxHeight: 100)
                    },
                    placeholder: {
                        Rectangle().frame(width:  100, height: 70).foregroundColor(.secondaryBlack)
                    }
                )
            }
            NavigationLink(destination: ItemDetailView(dish: dish)) {
                
            }.buttonStyle(PlainButtonStyle())
        }
    }
    
}

