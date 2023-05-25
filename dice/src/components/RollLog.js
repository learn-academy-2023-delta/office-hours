import React from "react";

const RollLog = (props) => {
  return(
    <>
      <ul>
        {/* Take only the last 15 rolls(not including the one being shown on dice), iterate using map and list */}
        {props.rollLog.slice(1,16).map(log => {
          return (
            <li>
              {log}
            </li>
          )
        })}
      </ul>
    </>
  )
}

export default RollLog