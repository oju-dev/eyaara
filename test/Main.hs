module Main (main) where

import Test.HUnit
import InstrumentationTest (createNewISOTest, insertEntryTest)
import qualified System.Exit as Exit

tests :: Test
tests = TestList [TestLabel "createNewISO" createNewISOTest, TestLabel "insertEntryTest" insertEntryTest]

main :: IO ()
main = do
  result <- runTestTT tests
  if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
