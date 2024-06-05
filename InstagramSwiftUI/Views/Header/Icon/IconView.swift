import SwiftUI

struct IconView: View {
    
    var countOfItems: Int
    var typeOfIcon: IconType
    
    var body: some View {
        Image(systemName: String(typeOfIcon.setImage))
                .resizable()
                .frame(width: 25, height: 25)
                .clipped()
                .padding(.horizontal, 5)
                .overlay(content: {
                    setCountOfItems(countOfItems)
                })
    }
}

func setCountOfItems(_ items: Int) -> some View{
    if items > 0{
        return Circle()
            .frame(width: 23, height: 23)
            .foregroundStyle(.red)
            .position(x: 25)
            .overlay(content:{
                Text(String(items))
                    .bold()
                    .foregroundStyle(.white)
                    .position(x:25)
            })
    }else{
        return Circle()
            .frame(width: 13, height: 13)
            .foregroundStyle(.red)
            .position(x: 30)
            .overlay(content:{
                Text("")
                    .bold()
                    .foregroundStyle(.white)
                    .position(x:25, y: 4)
            })
    }
}

#Preview {
    IconView(countOfItems: 0, typeOfIcon: .like)
}
