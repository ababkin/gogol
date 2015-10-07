{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTestersGet@.
module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
    (
    -- * REST Resource
      EditsTestersGetResource

    -- * Creating a Request
    , editsTestersGet'
    , EditsTestersGet'

    -- * Request Lenses
    , etgtQuotaUser
    , etgtTrack
    , etgtPrettyPrint
    , etgtPackageName
    , etgtUserIP
    , etgtKey
    , etgtOAuthToken
    , etgtEditId
    , etgtFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTestersGet@ method which the
-- 'EditsTestersGet'' request conforms to.
type EditsTestersGetResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "testers" :>
             Capture "track" EditsTestersGetTrack :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Testers

--
-- /See:/ 'editsTestersGet'' smart constructor.
data EditsTestersGet' = EditsTestersGet'
    { _etgtQuotaUser   :: !(Maybe Text)
    , _etgtTrack       :: !EditsTestersGetTrack
    , _etgtPrettyPrint :: !Bool
    , _etgtPackageName :: !Text
    , _etgtUserIP      :: !(Maybe Text)
    , _etgtKey         :: !(Maybe AuthKey)
    , _etgtOAuthToken  :: !(Maybe OAuthToken)
    , _etgtEditId      :: !Text
    , _etgtFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTestersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgtQuotaUser'
--
-- * 'etgtTrack'
--
-- * 'etgtPrettyPrint'
--
-- * 'etgtPackageName'
--
-- * 'etgtUserIP'
--
-- * 'etgtKey'
--
-- * 'etgtOAuthToken'
--
-- * 'etgtEditId'
--
-- * 'etgtFields'
editsTestersGet'
    :: EditsTestersGetTrack -- ^ 'track'
    -> Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTestersGet'
editsTestersGet' pEtgtTrack_ pEtgtPackageName_ pEtgtEditId_ =
    EditsTestersGet'
    { _etgtQuotaUser = Nothing
    , _etgtTrack = pEtgtTrack_
    , _etgtPrettyPrint = True
    , _etgtPackageName = pEtgtPackageName_
    , _etgtUserIP = Nothing
    , _etgtKey = Nothing
    , _etgtOAuthToken = Nothing
    , _etgtEditId = pEtgtEditId_
    , _etgtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etgtQuotaUser :: Lens' EditsTestersGet' (Maybe Text)
etgtQuotaUser
  = lens _etgtQuotaUser
      (\ s a -> s{_etgtQuotaUser = a})

etgtTrack :: Lens' EditsTestersGet' EditsTestersGetTrack
etgtTrack
  = lens _etgtTrack (\ s a -> s{_etgtTrack = a})

-- | Returns response with indentations and line breaks.
etgtPrettyPrint :: Lens' EditsTestersGet' Bool
etgtPrettyPrint
  = lens _etgtPrettyPrint
      (\ s a -> s{_etgtPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etgtPackageName :: Lens' EditsTestersGet' Text
etgtPackageName
  = lens _etgtPackageName
      (\ s a -> s{_etgtPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etgtUserIP :: Lens' EditsTestersGet' (Maybe Text)
etgtUserIP
  = lens _etgtUserIP (\ s a -> s{_etgtUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etgtKey :: Lens' EditsTestersGet' (Maybe AuthKey)
etgtKey = lens _etgtKey (\ s a -> s{_etgtKey = a})

-- | OAuth 2.0 token for the current user.
etgtOAuthToken :: Lens' EditsTestersGet' (Maybe OAuthToken)
etgtOAuthToken
  = lens _etgtOAuthToken
      (\ s a -> s{_etgtOAuthToken = a})

-- | Unique identifier for this edit.
etgtEditId :: Lens' EditsTestersGet' Text
etgtEditId
  = lens _etgtEditId (\ s a -> s{_etgtEditId = a})

-- | Selector specifying which fields to include in a partial response.
etgtFields :: Lens' EditsTestersGet' (Maybe Text)
etgtFields
  = lens _etgtFields (\ s a -> s{_etgtFields = a})

instance GoogleAuth EditsTestersGet' where
        _AuthKey = etgtKey . _Just
        _AuthToken = etgtOAuthToken . _Just

instance GoogleRequest EditsTestersGet' where
        type Rs EditsTestersGet' = Testers
        request = requestWith androidPublisherRequest
        requestWith rq EditsTestersGet'{..}
          = go _etgtPackageName _etgtEditId _etgtTrack
              _etgtQuotaUser
              (Just _etgtPrettyPrint)
              _etgtUserIP
              _etgtFields
              _etgtKey
              _etgtOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsTestersGetResource)
                      rq
