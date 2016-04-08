module Question.Update (update, init, Action) where

import Question.Model exposing (Model, initialModel)
import Effects exposing (Effects)


type Action
    = Noop


init : ( Model, Effects Action )
init =
  ( initialModel, Effects.none )


update : Action -> Model -> ( Model, Effects Action )
update action model =
  ( model, Effects.none )
