@react.component
let make = (~playing, ~rotateValue, ~rouletteNumber) => {
  let className = "roulette " ++ (playing ? "rotate-roulette" : "")
  <div className="roulette-container">
    <img className src="/images/roulette.png" />
    <Ball playing rotateValue />
    <RouletteNumber playing rouletteNumber />
  </div>
}
