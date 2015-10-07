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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of the authenticated user\'s active creatives. A
-- creative will be available 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerCreativesList@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.List
    (
    -- * REST Resource
      CreativesListResource

    -- * Creating a Request
    , creativesList'
    , CreativesList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clBuyerCreativeId
    , clUserIP
    , clOpenAuctionStatusFilter
    , clAccountId
    , clKey
    , clPageToken
    , clDealsStatusFilter
    , clOAuthToken
    , clMaxResults
    , clFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesList@ method which the
-- 'CreativesList'' request conforms to.
type CreativesListResource =
     "creatives" :>
       QueryParams "buyerCreativeId" Text :>
         QueryParam "openAuctionStatusFilter"
           CreativesListOpenAuctionStatusFilter
           :>
           QueryParams "accountId" Int32 :>
             QueryParam "pageToken" Text :>
               QueryParam "dealsStatusFilter"
                 CreativesListDealsStatusFilter
                 :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CreativesList

-- | Retrieves a list of the authenticated user\'s active creatives. A
-- creative will be available 30-40 minutes after submission.
--
-- /See:/ 'creativesList'' smart constructor.
data CreativesList' = CreativesList'
    { _clQuotaUser               :: !(Maybe Text)
    , _clPrettyPrint             :: !Bool
    , _clBuyerCreativeId         :: !(Maybe [Text])
    , _clUserIP                  :: !(Maybe Text)
    , _clOpenAuctionStatusFilter :: !(Maybe CreativesListOpenAuctionStatusFilter)
    , _clAccountId               :: !(Maybe [Int32])
    , _clKey                     :: !(Maybe AuthKey)
    , _clPageToken               :: !(Maybe Text)
    , _clDealsStatusFilter       :: !(Maybe CreativesListDealsStatusFilter)
    , _clOAuthToken              :: !(Maybe OAuthToken)
    , _clMaxResults              :: !(Maybe Word32)
    , _clFields                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clBuyerCreativeId'
--
-- * 'clUserIP'
--
-- * 'clOpenAuctionStatusFilter'
--
-- * 'clAccountId'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clDealsStatusFilter'
--
-- * 'clOAuthToken'
--
-- * 'clMaxResults'
--
-- * 'clFields'
creativesList'
    :: CreativesList'
creativesList' =
    CreativesList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clBuyerCreativeId = Nothing
    , _clUserIP = Nothing
    , _clOpenAuctionStatusFilter = Nothing
    , _clAccountId = Nothing
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clDealsStatusFilter = Nothing
    , _clOAuthToken = Nothing
    , _clMaxResults = Nothing
    , _clFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CreativesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CreativesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | When specified, only creatives for the given buyer creative ids are
-- returned.
clBuyerCreativeId :: Lens' CreativesList' [Text]
clBuyerCreativeId
  = lens _clBuyerCreativeId
      (\ s a -> s{_clBuyerCreativeId = a})
      . _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIP :: Lens' CreativesList' (Maybe Text)
clUserIP = lens _clUserIP (\ s a -> s{_clUserIP = a})

-- | When specified, only creatives having the given open auction status are
-- returned.
clOpenAuctionStatusFilter :: Lens' CreativesList' (Maybe CreativesListOpenAuctionStatusFilter)
clOpenAuctionStatusFilter
  = lens _clOpenAuctionStatusFilter
      (\ s a -> s{_clOpenAuctionStatusFilter = a})

-- | When specified, only creatives for the given account ids are returned.
clAccountId :: Lens' CreativesList' [Int32]
clAccountId
  = lens _clAccountId (\ s a -> s{_clAccountId = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CreativesList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response. Optional.
clPageToken :: Lens' CreativesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | When specified, only creatives having the given direct deals status are
-- returned.
clDealsStatusFilter :: Lens' CreativesList' (Maybe CreativesListDealsStatusFilter)
clDealsStatusFilter
  = lens _clDealsStatusFilter
      (\ s a -> s{_clDealsStatusFilter = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' CreativesList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Maximum number of entries returned on one result page. If not set, the
-- default is 100. Optional.
clMaxResults :: Lens' CreativesList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CreativesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

instance GoogleAuth CreativesList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest CreativesList' where
        type Rs CreativesList' = CreativesList
        request = requestWith adExchangeBuyerRequest
        requestWith rq CreativesList'{..}
          = go (_clBuyerCreativeId ^. _Default)
              _clOpenAuctionStatusFilter
              (_clAccountId ^. _Default)
              _clPageToken
              _clDealsStatusFilter
              _clMaxResults
              _clQuotaUser
              (Just _clPrettyPrint)
              _clUserIP
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CreativesListResource)
                      rq
