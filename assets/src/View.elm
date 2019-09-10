--assets/src/View.elm

module View exposing (..)

import Input.View exposing (..)
import ThreadList.View exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (..)
import Model exposing (..)

view : Model -> Html Msg
view model =
    div [id "wrapper"]
        [ h1 [] [text "EmiChan" ]
        , hr[class "abovePostInput"][]
        , inputView model
        , hr[][]
        , threadListView model.threadList
        ]
