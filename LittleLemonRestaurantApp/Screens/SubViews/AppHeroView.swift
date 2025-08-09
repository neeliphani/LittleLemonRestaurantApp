//
//  AppHeroView.swift
//  LittleLemonCapstoneIOS
//
//  Created by kedk on 9/9/23.
//

import SwiftUI

struct AppHeroView: View{
    let bottomView:AppTextView?
    
    init(bottomView: AppTextView?) {
        self.bottomView = bottomView
    }
    
    var body:some View{
        VStack{
            VStack(alignment: .leading){
                Text(heroTitle).font(.marKaziSubTitle).foregroundStyle(Color.primaryYellow)
                Text(heroAddress).font(.karlaSectionTitle).foregroundColor(Color.secondaryWhite)
                HStack{
                    Text(heroDesc)
                        .font(.karlaParagraph)
                        .foregroundColor(Color.secondaryWhite)
                        .fixedSize(horizontal: false, vertical: true)
                    Image("Hero image").resizable().frame(width: 130,height: 150)
                        .cornerRadius(10)
                }
            }
            bottomView
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 10))
        .background(Color.primaryBlue)
    }
}
