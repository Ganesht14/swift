import SwiftUI

struct EventsView: View {
var body: some View {
    VStack(alignment: .leading) {
        Text("Events")
            .font(.title2)
            .fontWeight(.regular)
            .padding(.leading, 15)
            .foregroundColor(.black)

        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(1..<4) { index in
                    Button(action: {
                        print("Box \(index) tapped")
                    }) {
                        VStack(spacing: 0) {
                            Image("eventsImage\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 100)
                                .cornerRadius(20)

                            HStack {
                                Text("Nov 09")
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.076, brightness: 0.322))
                                    .fontWeight(.regular)
                                    .font(.system(size: 22))
                                    .padding(.top, 10)
                                    .padding(.leading, 18)

                                Spacer()
                            }

                            Text(getDescription(for: index))
                                .fontWeight(.regular)
                                .foregroundStyle(Color("primaryColor"))
                                .font(.system(size: 25))
                                .lineLimit(2)
                                .truncationMode(.tail)
                                .frame(width: 160, alignment: .leading)
                                .padding([.leading, .trailing], 15)
                                .padding(.bottom, 20)
                        }
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.leading, 10)
        }
    }
}

func getDescription(for index: Int) -> String {
    switch index {
    case 1:
        return "Dickens in Downtown Celebration"
    case 2:
        return "DART 40th Anniversary Celebrations"
    case 3:
        return "Dickens in Downtown Plano"
    default:
        return ""
    }
}
}

struct EventsView_Previews: PreviewProvider {
static var previews: some View {
    EventsView()
}
}
