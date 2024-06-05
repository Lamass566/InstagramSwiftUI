import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        HStack{
            
            Text("Instagram")
                .foregroundStyle(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            HStack{
                IconView(countOfItems: 0, typeOfIcon: .like)
                IconView(countOfItems: 2, typeOfIcon: .message)
            }.foregroundStyle(.white)
        }.padding()
    }
}

#Preview {
    HeaderView()
}
