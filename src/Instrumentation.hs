module Instrumentation (newISO, insert, ISO(..)) where

-- ISO = Instrumentation Structure of Observability
newtype ISO = ISO [(String, [String])] deriving (Eq, Show)

newISO :: ISO
newISO = ISO []

insert :: (String, [String]) -> ISO -> ISO
insert (key, value) (ISO items) = ISO newIso
  where
    newIso = items ++ [(key, value)]