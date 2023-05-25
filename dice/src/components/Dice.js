import React from "react";

const Dice = (props) => {

  // setting a variable to use for inline styling, best practice to separate concerns especially in files with more code
  let styling = {
    border: "2px solid black",
    height: "200px",
    width: "200px",
    margin: "20px",
    textAlign: "center",
    fontSize: "45px"
  }

  return(
    <>
      {/* Using the props passed down from App.js to display an image and add behavior with onClick */}
      <img onClick={props.rollIt} style={styling} src={props.currentRoll} alt="dice"/>
      <p>Click to roll the dice above</p>
    </>
  )
}

export default Dice