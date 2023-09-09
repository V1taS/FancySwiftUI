//
//  AvatarCardView.swift
//  Avatars
//
//  Created by Vitalii Sosin on 09.09.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import SwiftUI

struct AvatarCardView: View {
  
  // MARK: - Private property
  
  private let avatarLeftName: String
  private let avatarCentertName: String
  private let avatarRightName: String
  
  // MARK: - Initialization
  
  init(avatarLeftName: String, avatarCentertName: String, avatarRightName: String) {
    self.avatarLeftName = avatarLeftName
    self.avatarCentertName = avatarCentertName
    self.avatarRightName = avatarRightName
  }
  
  var body: some View {
    VStack {
      TripleAvatarRowView(
        avatarLeftName: avatarLeftName,
        avatarCentertName: avatarCentertName,
        avatarRightName: avatarRightName
      )
      .padding(.top, 24)
      
      Text("Humans")
        .font(.system(size: 24))
        .fontWeight(.bold)
        .padding(.top, 32)
      
      Text("Try yourself in different looks")
        .font(.system(size: 20))
        .fontWeight(.regular)
    }
    .frame(maxWidth: .infinity)
    .background(
      RoundedRectangle(cornerRadius: 24, style: .circular)
        .fill(LinearGradient(
          gradient: Gradient(colors: [Color.gray, Color.gray]),
          startPoint: .top,
          endPoint: .bottom
        ))
        .shadow(color: .black, radius: 4, x: 4, y: 4),
      alignment: .center
    )
  }
}

struct AvatarCardView_Previews: PreviewProvider {
  static var previews: some View {
    AvatarCardView(
      avatarLeftName: "avatar_card_left",
      avatarCentertName: "avatar_card_center",
      avatarRightName: "avatar_card_right"
    )
  }
}
