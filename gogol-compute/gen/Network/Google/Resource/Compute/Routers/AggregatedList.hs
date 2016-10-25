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
-- Module      : Network.Google.Resource.Compute.Routers.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of routers.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.aggregatedList@.
module Network.Google.Resource.Compute.Routers.AggregatedList
    (
    -- * REST Resource
      RoutersAggregatedListResource

    -- * Creating a Request
    , routersAggregatedList
    , RoutersAggregatedList

    -- * Request Lenses
    , ralOrderBy
    , ralProject
    , ralFilter
    , ralPageToken
    , ralMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.aggregatedList@ method which the
-- 'RoutersAggregatedList' request conforms to.
type RoutersAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "routers" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RouterAggregatedList

-- | Retrieves an aggregated list of routers.
--
-- /See:/ 'routersAggregatedList' smart constructor.
data RoutersAggregatedList = RoutersAggregatedList'
    { _ralOrderBy    :: !(Maybe Text)
    , _ralProject    :: !Text
    , _ralFilter     :: !(Maybe Text)
    , _ralPageToken  :: !(Maybe Text)
    , _ralMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ralOrderBy'
--
-- * 'ralProject'
--
-- * 'ralFilter'
--
-- * 'ralPageToken'
--
-- * 'ralMaxResults'
routersAggregatedList
    :: Text -- ^ 'ralProject'
    -> RoutersAggregatedList
routersAggregatedList pRalProject_ =
    RoutersAggregatedList'
    { _ralOrderBy = Nothing
    , _ralProject = pRalProject_
    , _ralFilter = Nothing
    , _ralPageToken = Nothing
    , _ralMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
ralOrderBy :: Lens' RoutersAggregatedList (Maybe Text)
ralOrderBy
  = lens _ralOrderBy (\ s a -> s{_ralOrderBy = a})

-- | Project ID for this request.
ralProject :: Lens' RoutersAggregatedList Text
ralProject
  = lens _ralProject (\ s a -> s{_ralProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
ralFilter :: Lens' RoutersAggregatedList (Maybe Text)
ralFilter
  = lens _ralFilter (\ s a -> s{_ralFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ralPageToken :: Lens' RoutersAggregatedList (Maybe Text)
ralPageToken
  = lens _ralPageToken (\ s a -> s{_ralPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
ralMaxResults :: Lens' RoutersAggregatedList Word32
ralMaxResults
  = lens _ralMaxResults
      (\ s a -> s{_ralMaxResults = a})
      . _Coerce

instance GoogleRequest RoutersAggregatedList where
        type Rs RoutersAggregatedList = RouterAggregatedList
        type Scopes RoutersAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersAggregatedList'{..}
          = go _ralProject _ralOrderBy _ralFilter _ralPageToken
              (Just _ralMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RoutersAggregatedListResource)
                      mempty
