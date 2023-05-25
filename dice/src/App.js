import React, { useState } from "react";
import "./App.css"
// component import
import Dice from "./components/Dice";
import RollLog from "./components/RollLog";
// image import
import one from "./assets/1-dice.png"
import two from "./assets/2-dice.png"
import three from "./assets/3-dice.png"
import four from "./assets/4-dice.png"
import five from "./assets/5-dice.png"
import six from "./assets/6-dice.png"

const App = () => {
  // set my initial state to the image of six imported above
  const [currentRoll, setCurrentRoll] = useState(six)
  // set state to an empty array to add rolls later on
  const [rollLog, setRollLog] = useState([])
  // array of the images imported
  const diceImageArray = [one, two, three, four, five, six]


  const rollingTheDice = () => {
    //roll a random number between 1-6
    let roll = Math.ceil(Math.random() * 6)
    //set the image to the roll - 1 since referencing index of dice image array
    setCurrentRoll(diceImageArray[roll - 1])
    // update my roll log using the spread operator
    setRollLog([roll, ...rollLog])
  }


  return(
    <>
      <h1>Office Hours Dice Roller</h1>
      <div className="box">
        {/* component call */}
        <Dice 
        // passing props to Dice component
          currentRoll={currentRoll}
          rollIt={rollingTheDice}
        />
        {/* passing props to RollLog component */}
        <RollLog rollLog={rollLog}/>
      </div>
    </>
  )
}

export default App