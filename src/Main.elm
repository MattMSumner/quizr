module Main (..) where

import Html exposing (..)
import Question.Model exposing (..)
import Question.Update exposing (init, update, Action)
import Question.View
import StartApp
import Task exposing (Task)
import Effects exposing (Effects)


app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , view = view
    , update = update
    , inputs = []
    }


main : Signal Html
main =
  app.html


view : Signal.Address Action -> Model -> Html
view address question =
  div
    []
    [ heading
    , Question.View.view question
    ]


heading : Html
heading =
  h1 [] [ text "Quizr" ]


port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks
