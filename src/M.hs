{-# LANGUAGE OverloadedStrings #-}
module Main where
import System.Environment
import Euterpea
import Web.Hastodon



main :: IO ()
main = do
  let clientId = ""
  let clientSecret = ""
  let email = "@paom.com"
  let password = ""
  maybeClient <- mkHastodonClient clientId clientSecret email password "vis.social" --astodon.social"
  case maybeClient of
    Just client -> do
  --    timeline <- getAccountById client 58541
  --    print timeline
      result <- getTaggedTimeline "music" -- postStatus client "test toot from hastodon!"
      print result
    Nothing -> do
      putStrLn "Failed to log in.  Be careful regarding the spelling of your email and password."
    --putStrLn "Hello, Haskell!"
   -- play $ c 4 qn
