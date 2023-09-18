import Foundation
import SwiftUI

var globalPerson = Person(
    firstName: "GOOD",
    lastName: "PERSON",
    isAvailable: false
)

@Observable class Person {
    let firstName: String
    let lastName: String
    var isAvailable: Bool
    
    init(firstName: String, lastName: String, isAvailable: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.isAvailable = isAvailable
    }
}

struct GlobalPersonView: View {
    // このコードだと別に変更検知してくれないらしい、GlobalPersonViewが再描画されたら、変更はされるっぽい
    var body: some View {
        VStack {
            Text(
                globalPerson.firstName
            )
            Text(
                globalPerson.lastName
            )
            Text(
                globalPerson.isAvailable.description
            )
            Button(
                action: {
                    let date = Date.now.formatted()
                    globalPerson = Person(firstName: date, lastName: date, isAvailable: globalPerson.isAvailable)
                },
                label: {
                    Text("UPDATE")
                }
            )
            Button(
                action: {
                    globalPerson.isAvailable.toggle()
                },
                label: {
                    Text("TOGGLE")
                }
            )
        }
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
            Text(
                person.isAvailable.description
            )
            Button(
                action: {
                    let date = Date.now.formatted()
                    person = Person(firstName: date, lastName: date, isAvailable: person.isAvailable)
                },
                label: {
                    Text("UPDATE")
                }
            )
            Button(
                action: {
                    person.isAvailable.toggle()
                },
                label: {
                    Text("TOGGLE")
                }
            )
        }
    }
}

struct PersonDemo: View {
    var body: some View {
        VStack {
            PersonView(person: globalPerson)
            GlobalPersonView()
        }
    }
}
