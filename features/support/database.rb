# coding: utf-8

DATABASE = {
        name: {
            name1: 'Sandro',
            name2: 'Keila',
            name3: 'José',
            name4: 'Dedy',
            name5: 'Henrique',
            name6: Faker::Name.name
        },

        salary: {
            salary1: 420800,
            salary2: 1000,
            salary3: 5000,
            salary4: 90000,
            salary5: 30000,
            salary6: Faker::Number.number
        },

        age: {
            age1: 34,
            age2: 27,
            age3: 6,
            age4: 72,
            age5: 12,
            age6: Faker::Number.number(digits: 2)
        }
}