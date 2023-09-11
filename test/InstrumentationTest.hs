module InstrumentationTest (createNewISOTest, insertEntryTest) where

import Instrumentation (ISO (..), insert, newISO)
import Test.HUnit

createNewISOTest :: Test
createNewISOTest = TestCase (assertEqual "should return empty ISO" (ISO []) newISO)

insertEntryTest :: Test
insertEntryTest = TestCase (assertEqual "should return a ISO with entry" desired appliedFunction)
  where
    desired = ISO [("chave", ["valor1"])]
    appliedFunction = insert ("chave", ["valor1"]) newISO