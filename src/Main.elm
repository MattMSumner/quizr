module Main (..) where

import Html exposing (..)
import Question.Model exposing (..)
import Question.View


main : Html
main =
  view initialModel


view : Model -> Html
view question =
  div
    []
    [ heading
    , Question.View.view question
    ]


heading : Html
heading =
  h1 [] [ text "Quizr" ]


