{-# LANGUAGE CPP #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-dodgy-exports #-} -- Char8

-- |
-- Module      : Network.TLS.Imports
-- License     : BSD-style
-- Maintainer  : Vincent Hanquez <vincent@snarc.org>
-- Stability   : experimental
-- Portability : unknown
--
module Network.TLS.Imports
    (
    -- generic exports
      ByteString
    , module Data.ByteString.Char8 -- instance
    , module Control.Applicative
    , module Control.Monad
#if !MIN_VERSION_base(4,13,0)
    , MonadFail
#endif
    , module Data.Bits
    , module Data.List
    , module Data.Maybe
    , module Data.Semigroup
    , module Data.Ord
    , module Data.Word
    -- project definition
    , showBytesHex
    ) where

import Data.ByteString (ByteString)
import Data.ByteString.Char8 ()

import Control.Applicative
import Control.Monad
#if !MIN_VERSION_base(4,13,0)
import Control.Monad.Fail (MonadFail)
#endif
import Data.Bits
import Data.List
import Data.Maybe hiding (fromJust)
import Data.Semigroup
import Data.Ord
import Data.Word

import Data.ByteArray.Encoding as B
import qualified Prelude as P

showBytesHex :: ByteString -> P.String
showBytesHex bs = P.show (B.convertToBase B.Base16 bs :: ByteString)

