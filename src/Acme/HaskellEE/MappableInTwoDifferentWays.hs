{-# LANGUAGE ConstraintKinds #-}

module Acme.HaskellEE.MappableInTwoDifferentWays
  ( MappableInTwoDifferentWays
  , twoWaysMap
  , mapAccorrdingToTheFirstParameter
  , mapAccorrdingToTheSecondParameter
  ) where

import Data.Bifunctor

type MappableInTwoDifferentWays = Bifunctor

twoWaysMap :: MappableInTwoDifferentWays f
           => (a -> c) -> (b -> d) -> f a b -> f c d
twoWaysMap = bimap

mapAccordingToTheFirstParameter :: MappableInTwoDifferentWays f
                                 => (a -> c) -> f a b -> f c b
mapAccordingToTheFirstParameter = first

mapAccordingToTheSecondParameter :: MappableInTwoDifferentWays f
                                 => (b -> d) -> f a b -> f a d
mapAccordingToTheSecondParameter = second
