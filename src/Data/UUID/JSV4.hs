{-# LANGUAGE JavaScriptFFI #-}
module Data.UUID.JSV4 (generateUUID) where

import Data.JSString

foreign import javascript unsafe "window['generateUUID']()"
    js_generateUUID :: IO JSString

generateUUID :: IO String
generateUUID = unpack <$> js_generateUUID

