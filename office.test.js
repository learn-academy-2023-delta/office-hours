let students = ["brandon", "miguel", "michael", "jesus"]

// console.log(student.slice(1))

// const studentUpperCase = (array) => {
//   return array.map(value => {
//     return value.reverse()
//   })
// }

// console.log(studentUpperCase(students))

let numbers = [3, 4, 2, 1, 21, 9, 7, 35]

const mixItUp = (array) => {
  return array.sort()
}

console.log(mixItUp(numbers))

// Output:
// [
//   1, 2, 21, 3,
//  35, 4,  7, 9
// ]

// Create a function that takes in an array of mixed data types and returns the first value that is a string. HINT: look into the JavaScript .find() method.

// describe("firstString", () => {
//   it("returns the first value that is a string", () => {
//     const allTheData = [7, null, true, 2, "yo!", false, 4, "hello!"]
//     expect(firstString(allTheData)).toEqual("yo!")
//   })
// })

// ReferenceError: firstString is not defined

const firstString = (array) => {
  return array.find(value => typeof value === "string")
}

// describe("fruit", () => {
//   it("returns the color of the fruit input", () => {
//     let fruitOne = "banana"
//     expect(fruit(fruitOne)).toEqual("yellow")
//   })
// })

const fruit = (id) => {
  if(id === "banana") {
    return "yellow"
  }
}

// Write the test for a function called rick that returns "Morty".
// Create the function that will make the test pass.

// describe("rick", () => {
//   it("returns 'Morty'", () => {
//     // let fruitOne = "banana"
//     expect(rick("Jacob")).toEqual("Morty")
//     expect(rick("Miguel")).toEqual("Luis")
//     expect(rick(true)).toEqual("Scooby-Doo")
//   })
// })

const rick = (nameString) => {
  if(nameString === "Jacob") {
    return "Morty"
  } else if(nameString === "Miguel") {
    return "Luis"
  } else {
    return "Scooby-Doo"
  }
}

