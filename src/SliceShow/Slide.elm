module SliceShow.Slide (Slide, slide) where
{-| This module helps you define a slide
@docs Slide, slide
-}

import SliceShow.State exposing (State(Inactive, Hidden))
import SliceShow.Content exposing (Content)
import SliceShow.Protected exposing (Protected, lock)
import SliceShow.SlideData exposing (SlideData)


{-| Slide type -}
type alias Slide a = Protected (SlideData a)


{-| Create new slide from a list of content items -}
slide : List (Content a) -> Slide a
slide elements =
  lock
    { elements = elements
    , state = Hidden
    , dimensions = (1024, 640)
    }
