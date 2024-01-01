//
//  SwiftUICardView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 27/11/2023.
//

import SwiftUI

struct SwiftUICardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(.venom)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius:8))
                .frame(width: 143, height: 212, alignment: .leading)
                .shadow(color: .black.opacity(0.5), radius: 6, x: 0,  y: 6)
                

            // movie name
            /*
            Text("The Shawshank Redemption")
                .font(.subheadline)
                .fontWeight(.bold)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.black)
                .padding(.top, 7)
             */
            
            TitleName(textName: "Now Showing")
            
            Text("The Shawshank Redemption")
                .font(Font.custom("Mulish-Bold", size: 14, relativeTo: .subheadline))
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.black)
                .padding(.top, 5)
                
            // movie rating
            VStack(alignment: .leading) {
                TextRating(text: "8.71/10 IMDb", imageName: "star.fill")
            }
        }
    }
}

#Preview {
    SwiftUICardView()
}
