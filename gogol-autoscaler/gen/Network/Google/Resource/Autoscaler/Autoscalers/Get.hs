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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified Autoscaler resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerAutoscalersGet@.
module Network.Google.Resource.Autoscaler.Autoscalers.Get
    (
    -- * REST Resource
      AutoscalersGetResource

    -- * Creating a Request
    , autoscalersGet'
    , AutoscalersGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agProject
    , agUserIP
    , agZone
    , agKey
    , agAutoscaler
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerAutoscalersGet@ method which the
-- 'AutoscalersGet'' request conforms to.
type AutoscalersGetResource =
     "projects" :>
       Capture "project" Text :>
         "zones" :>
           Capture "zone" Text :>
             "autoscalers" :>
               Capture "autoscaler" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Autoscaler

-- | Gets the specified Autoscaler resource.
--
-- /See:/ 'autoscalersGet'' smart constructor.
data AutoscalersGet' = AutoscalersGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agProject     :: !Text
    , _agUserIP      :: !(Maybe Text)
    , _agZone        :: !Text
    , _agKey         :: !(Maybe AuthKey)
    , _agAutoscaler  :: !Text
    , _agOAuthToken  :: !(Maybe OAuthToken)
    , _agFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agProject'
--
-- * 'agUserIP'
--
-- * 'agZone'
--
-- * 'agKey'
--
-- * 'agAutoscaler'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
autoscalersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'autoscaler'
    -> AutoscalersGet'
autoscalersGet' pAgProject_ pAgZone_ pAgAutoscaler_ =
    AutoscalersGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agProject = pAgProject_
    , _agUserIP = Nothing
    , _agZone = pAgZone_
    , _agKey = Nothing
    , _agAutoscaler = pAgAutoscaler_
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AutoscalersGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AutoscalersGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | Project ID of Autoscaler resource.
agProject :: Lens' AutoscalersGet' Text
agProject
  = lens _agProject (\ s a -> s{_agProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' AutoscalersGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | Zone name of Autoscaler resource.
agZone :: Lens' AutoscalersGet' Text
agZone = lens _agZone (\ s a -> s{_agZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AutoscalersGet' (Maybe AuthKey)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | Name of the Autoscaler resource.
agAutoscaler :: Lens' AutoscalersGet' Text
agAutoscaler
  = lens _agAutoscaler (\ s a -> s{_agAutoscaler = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AutoscalersGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AutoscalersGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AutoscalersGet' where
        _AuthKey = agKey . _Just
        _AuthToken = agOAuthToken . _Just

instance GoogleRequest AutoscalersGet' where
        type Rs AutoscalersGet' = Autoscaler
        request = requestWith autoscalerRequest
        requestWith rq AutoscalersGet'{..}
          = go _agProject _agZone _agAutoscaler _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AutoscalersGetResource)
                      rq
