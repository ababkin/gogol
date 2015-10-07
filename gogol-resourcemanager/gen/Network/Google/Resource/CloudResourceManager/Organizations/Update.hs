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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an Organization resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsUpdate@.
module Network.Google.Resource.CloudResourceManager.Organizations.Update
    (
    -- * REST Resource
      OrganizationsUpdateResource

    -- * Creating a Request
    , organizationsUpdate'
    , OrganizationsUpdate'

    -- * Request Lenses
    , ouXgafv
    , ouQuotaUser
    , ouPrettyPrint
    , ouUploadProtocol
    , ouPp
    , ouAccessToken
    , ouUploadType
    , ouPayload
    , ouBearerToken
    , ouKey
    , ouOAuthToken
    , ouOrganizationId
    , ouFields
    , ouCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsUpdate@ method which the
-- 'OrganizationsUpdate'' request conforms to.
type OrganizationsUpdateResource =
     "v1beta1" :>
       "organizations" :>
         Capture "organizationId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Organization :>
                                       Put '[JSON] Organization

-- | Updates an Organization resource.
--
-- /See:/ 'organizationsUpdate'' smart constructor.
data OrganizationsUpdate' = OrganizationsUpdate'
    { _ouXgafv          :: !(Maybe Text)
    , _ouQuotaUser      :: !(Maybe Text)
    , _ouPrettyPrint    :: !Bool
    , _ouUploadProtocol :: !(Maybe Text)
    , _ouPp             :: !Bool
    , _ouAccessToken    :: !(Maybe Text)
    , _ouUploadType     :: !(Maybe Text)
    , _ouPayload        :: !Organization
    , _ouBearerToken    :: !(Maybe Text)
    , _ouKey            :: !(Maybe AuthKey)
    , _ouOAuthToken     :: !(Maybe OAuthToken)
    , _ouOrganizationId :: !Text
    , _ouFields         :: !(Maybe Text)
    , _ouCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouXgafv'
--
-- * 'ouQuotaUser'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUploadProtocol'
--
-- * 'ouPp'
--
-- * 'ouAccessToken'
--
-- * 'ouUploadType'
--
-- * 'ouPayload'
--
-- * 'ouBearerToken'
--
-- * 'ouKey'
--
-- * 'ouOAuthToken'
--
-- * 'ouOrganizationId'
--
-- * 'ouFields'
--
-- * 'ouCallback'
organizationsUpdate'
    :: Organization -- ^ 'payload'
    -> Text -- ^ 'organizationId'
    -> OrganizationsUpdate'
organizationsUpdate' pOuPayload_ pOuOrganizationId_ =
    OrganizationsUpdate'
    { _ouXgafv = Nothing
    , _ouQuotaUser = Nothing
    , _ouPrettyPrint = True
    , _ouUploadProtocol = Nothing
    , _ouPp = True
    , _ouAccessToken = Nothing
    , _ouUploadType = Nothing
    , _ouPayload = pOuPayload_
    , _ouBearerToken = Nothing
    , _ouKey = Nothing
    , _ouOAuthToken = Nothing
    , _ouOrganizationId = pOuOrganizationId_
    , _ouFields = Nothing
    , _ouCallback = Nothing
    }

-- | V1 error format.
ouXgafv :: Lens' OrganizationsUpdate' (Maybe Text)
ouXgafv = lens _ouXgafv (\ s a -> s{_ouXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ouQuotaUser :: Lens' OrganizationsUpdate' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrganizationsUpdate' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouUploadProtocol :: Lens' OrganizationsUpdate' (Maybe Text)
ouUploadProtocol
  = lens _ouUploadProtocol
      (\ s a -> s{_ouUploadProtocol = a})

-- | Pretty-print response.
ouPp :: Lens' OrganizationsUpdate' Bool
ouPp = lens _ouPp (\ s a -> s{_ouPp = a})

-- | OAuth access token.
ouAccessToken :: Lens' OrganizationsUpdate' (Maybe Text)
ouAccessToken
  = lens _ouAccessToken
      (\ s a -> s{_ouAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouUploadType :: Lens' OrganizationsUpdate' (Maybe Text)
ouUploadType
  = lens _ouUploadType (\ s a -> s{_ouUploadType = a})

-- | Multipart request metadata.
ouPayload :: Lens' OrganizationsUpdate' Organization
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | OAuth bearer token.
ouBearerToken :: Lens' OrganizationsUpdate' (Maybe Text)
ouBearerToken
  = lens _ouBearerToken
      (\ s a -> s{_ouBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrganizationsUpdate' (Maybe AuthKey)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOAuthToken :: Lens' OrganizationsUpdate' (Maybe OAuthToken)
ouOAuthToken
  = lens _ouOAuthToken (\ s a -> s{_ouOAuthToken = a})

-- | An immutable id for the Organization that is assigned on creation. This
-- should be omitted when creating a new Organization. This field is
-- read-only.
ouOrganizationId :: Lens' OrganizationsUpdate' Text
ouOrganizationId
  = lens _ouOrganizationId
      (\ s a -> s{_ouOrganizationId = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrganizationsUpdate' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

-- | JSONP
ouCallback :: Lens' OrganizationsUpdate' (Maybe Text)
ouCallback
  = lens _ouCallback (\ s a -> s{_ouCallback = a})

instance GoogleAuth OrganizationsUpdate' where
        _AuthKey = ouKey . _Just
        _AuthToken = ouOAuthToken . _Just

instance GoogleRequest OrganizationsUpdate' where
        type Rs OrganizationsUpdate' = Organization
        request = requestWith resourceManagerRequest
        requestWith rq OrganizationsUpdate'{..}
          = go _ouOrganizationId _ouXgafv _ouUploadProtocol
              (Just _ouPp)
              _ouAccessToken
              _ouUploadType
              _ouBearerToken
              _ouCallback
              _ouQuotaUser
              (Just _ouPrettyPrint)
              _ouFields
              _ouKey
              _ouOAuthToken
              (Just AltJSON)
              _ouPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OrganizationsUpdateResource)
                      rq
