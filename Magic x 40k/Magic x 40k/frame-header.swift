//
//  frame-header.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 24/06/2023.
//

import SwiftUI

struct frame_header: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.cardBorder)
                .frame(width: 323, height: 36)
            
            RoundedRectangle(cornerRadius: 8)
                .fill(.cardBackgroundTextHeading)
                .strokeBorder(LinearGradient(gradient: Gradient(colors: [.white.opacity(1), .black.opacity(1)]), startPoint: .top, endPoint: .bottom).blendMode(.overlay), lineWidth: 4)
                .strokeBorder(lineWidth: 1)
                .frame(width: 319, height: 32)
                .padding([.top, .bottom], 2)
                .padding([.leading, .trailing], 2)
            
                
                
            HStack {
                Text("And They Shall Know No Fear")
                    .font(.custom("Matrix", size: 15))
                
                Spacer()
                
                HStack (spacing: 3) {
                    Image("1")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                    Image("W")
                        .resizable()
                        .frame(width: 14.0, height: 14.0)
                }
                .shadow(radius: 1)
                
                
            }
            .frame(width: 300)
            .padding([.all], 10)

        }

        

    }
        
}

#Preview {
    frame_header()
}



/*
.frame-header,
.frame-type-line {
    border-bottom: 4px solid #a9a9a9;
    border-left: 2px solid #a9a9a9;
    border-top: 1px solid #fff;
    border-right: 1px solid #fff;
}

.frame-header,
.frame-art,
.frame-type-line {
    box-shadow:
        0 0 0 2px #171314,
        0 0 0 5px #26714A,
        -3px 3px 2px 5px #171314;

    margin-bottom: 7px;
}

.frame-header,
.frame-type-line,
.frame-text-box {
    overflow: hidden;
}

.frame-header,
.frame-type-line {
    background:
        linear-gradient( 0deg, rgba(201, 216, 201, .3), rgba(201, 216, 209, .3) ),
        url(https://image.ibb.co/jKByZn/tile_bg_1.jpg);
    display: flex;
    margin-top: 10px;
    margin-left: 5px;
    margin-right: 5px;
    padding: 8px 0;
    display: flex;
    justify-content: space-between;
    border-radius: 18px/40px;
}
*/
