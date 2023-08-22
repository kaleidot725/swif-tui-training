import Foundation
import SwiftUI

var globalPerson = Person(
    firstName: "GOOD",
    lastName: "PERSON"
)

@Observable class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct PersonView: View {
    // PersonはクラスだがPersonViewはStructなので、Personのプロパティを更新するには、やはり@Stateが必要
    @State var person: Person
    var body: some View {
        VStack {
            Text(
                person.firstName
            )
            Text(
                person.lastName
            )
            Button(
                action: {
                    let date = Date.now.formatted()
                    person = Person(firstName: date, lastName: date)
                },
                label: {
                    Text("Update")
                }
            )
        }
    }
}

struct PersonDemo: View {
    var body: some View {
        VStack {
            PersonView(
                person: globalPerson
            )
            
        }
    }
}
