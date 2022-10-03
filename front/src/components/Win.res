@react.component
let make = (~win, ~handleCloseWin) => {
  let className = "win-txt " ++ (win ? "show" : "")
  <div className>
    {React.string("YOU WIN!")}
    <button className="spin close" onClick=handleCloseWin> {React.string("Close")} </button>
  </div>
}
