module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log, logShow)

foreign import data Undefined :: * -> *
foreign import head :: forall a. Array a -> Undefined a
foreign import isUndefined :: forall a. Undefined a -> Boolean

isEmpty :: forall a. Array a -> Boolean
isEmpty = isUndefined <<< head

foreign import data PDFJS :: !
foreign import isPDFJSLoaded :: forall e. Eff (p :: PDFJS | e) Boolean

main :: forall e. Eff (console :: CONSOLE, p :: PDFJS | e) Unit
main = do
  logShow $ isUndefined $ head [1,2,3]
  logShow $ isUndefined $ head []
  logShow $ isEmpty []
  logShow $ isEmpty [1,2,3]
  loaded <- isPDFJSLoaded
  logShow loaded
  log $ "hello sailor!"
