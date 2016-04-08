module Question.Model (Model, initialModel) where


type alias Model =
  { category: String
  , difficulty: String
  , text: String
  }


initialModel : Model
initialModel =
  { category = "Movie"
  , difficulty = "Hard"
  , text = "An awesome question?"
  }


