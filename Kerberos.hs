{-# LANGUAGE QuasiQuotes, TemplateHaskell, TypeFamilies #-}
{-# LANGUAGE OverloadedStrings #-}
module Kerberos 
  (authKerberos)
  where

import Yesod
import Yesod.Helpers.Auth
import Yesod.Handler
import Yesod.Widget
import qualified Settings
import qualified Data.ByteString.Lazy as L
import Settings (hamletFile, cassiusFile, juliusFile, widgetFile)
import qualified Data.Text as T

forwardUrl :: AuthRoute
forwardUrl = PluginR "kerberos" ["forward"]

authKerberos :: YesodAuth m => AuthPlugin m
authKerberos =
    AuthPlugin "kerberos" dispatch login
  where
    login :: (Yesod.Handler.Route Auth -> Yesod.Handler.Route m)
                         -> Yesod.Widget.GWidget s m ()
    login = undefined
    dispatch = undefined


