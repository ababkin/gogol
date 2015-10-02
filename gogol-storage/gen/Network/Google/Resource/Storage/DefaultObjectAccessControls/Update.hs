{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageDefaultObjectAccessControlsUpdate@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Update
    (
    -- * REST Resource
      DefaultObjectAccessControlsUpdateResource

    -- * Creating a Request
    , defaultObjectAccessControlsUpdate'
    , DefaultObjectAccessControlsUpdate'

    -- * Request Lenses
    , doacuQuotaUser
    , doacuPrettyPrint
    , doacuUserIP
    , doacuBucket
    , doacuKey
    , doacuOAuthToken
    , doacuEntity
    , doacuObjectAccessControl
    , doacuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageDefaultObjectAccessControlsUpdate@ which the
-- 'DefaultObjectAccessControlsUpdate'' request conforms to.
type DefaultObjectAccessControlsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "defaultObjectAcl" :>
           Capture "entity" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ObjectAccessControl :>
                             Put '[JSON] ObjectAccessControl

-- | Updates a default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsUpdate'' smart constructor.
data DefaultObjectAccessControlsUpdate' = DefaultObjectAccessControlsUpdate'
    { _doacuQuotaUser           :: !(Maybe Text)
    , _doacuPrettyPrint         :: !Bool
    , _doacuUserIP              :: !(Maybe Text)
    , _doacuBucket              :: !Text
    , _doacuKey                 :: !(Maybe Key)
    , _doacuOAuthToken          :: !(Maybe OAuthToken)
    , _doacuEntity              :: !Text
    , _doacuObjectAccessControl :: !ObjectAccessControl
    , _doacuFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacuQuotaUser'
--
-- * 'doacuPrettyPrint'
--
-- * 'doacuUserIP'
--
-- * 'doacuBucket'
--
-- * 'doacuKey'
--
-- * 'doacuOAuthToken'
--
-- * 'doacuEntity'
--
-- * 'doacuObjectAccessControl'
--
-- * 'doacuFields'
defaultObjectAccessControlsUpdate'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> ObjectAccessControl -- ^ 'ObjectAccessControl'
    -> DefaultObjectAccessControlsUpdate'
defaultObjectAccessControlsUpdate' pDoacuBucket_ pDoacuEntity_ pDoacuObjectAccessControl_ =
    DefaultObjectAccessControlsUpdate'
    { _doacuQuotaUser = Nothing
    , _doacuPrettyPrint = True
    , _doacuUserIP = Nothing
    , _doacuBucket = pDoacuBucket_
    , _doacuKey = Nothing
    , _doacuOAuthToken = Nothing
    , _doacuEntity = pDoacuEntity_
    , _doacuObjectAccessControl = pDoacuObjectAccessControl_
    , _doacuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
doacuQuotaUser :: Lens' DefaultObjectAccessControlsUpdate' (Maybe Text)
doacuQuotaUser
  = lens _doacuQuotaUser
      (\ s a -> s{_doacuQuotaUser = a})

-- | Returns response with indentations and line breaks.
doacuPrettyPrint :: Lens' DefaultObjectAccessControlsUpdate' Bool
doacuPrettyPrint
  = lens _doacuPrettyPrint
      (\ s a -> s{_doacuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
doacuUserIP :: Lens' DefaultObjectAccessControlsUpdate' (Maybe Text)
doacuUserIP
  = lens _doacuUserIP (\ s a -> s{_doacuUserIP = a})

-- | Name of a bucket.
doacuBucket :: Lens' DefaultObjectAccessControlsUpdate' Text
doacuBucket
  = lens _doacuBucket (\ s a -> s{_doacuBucket = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
doacuKey :: Lens' DefaultObjectAccessControlsUpdate' (Maybe Key)
doacuKey = lens _doacuKey (\ s a -> s{_doacuKey = a})

-- | OAuth 2.0 token for the current user.
doacuOAuthToken :: Lens' DefaultObjectAccessControlsUpdate' (Maybe OAuthToken)
doacuOAuthToken
  = lens _doacuOAuthToken
      (\ s a -> s{_doacuOAuthToken = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacuEntity :: Lens' DefaultObjectAccessControlsUpdate' Text
doacuEntity
  = lens _doacuEntity (\ s a -> s{_doacuEntity = a})

-- | Multipart request metadata.
doacuObjectAccessControl :: Lens' DefaultObjectAccessControlsUpdate' ObjectAccessControl
doacuObjectAccessControl
  = lens _doacuObjectAccessControl
      (\ s a -> s{_doacuObjectAccessControl = a})

-- | Selector specifying which fields to include in a partial response.
doacuFields :: Lens' DefaultObjectAccessControlsUpdate' (Maybe Text)
doacuFields
  = lens _doacuFields (\ s a -> s{_doacuFields = a})

instance GoogleAuth
         DefaultObjectAccessControlsUpdate' where
        authKey = doacuKey . _Just
        authToken = doacuOAuthToken . _Just

instance GoogleRequest
         DefaultObjectAccessControlsUpdate' where
        type Rs DefaultObjectAccessControlsUpdate' =
             ObjectAccessControl
        request = requestWithRoute defReq storageURL
        requestWithRoute r u
          DefaultObjectAccessControlsUpdate'{..}
          = go _doacuQuotaUser (Just _doacuPrettyPrint)
              _doacuUserIP
              _doacuBucket
              _doacuKey
              _doacuOAuthToken
              _doacuEntity
              _doacuFields
              (Just AltJSON)
              _doacuObjectAccessControl
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsUpdateResource)
                      r
                      u