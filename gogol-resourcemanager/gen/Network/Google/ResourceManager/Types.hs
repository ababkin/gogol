{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types
    (
    -- * Service Request
      resourceManagerRequest

    -- * ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- * ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- * Project
    , Project
    , project
    , pParent
    , pProjectNumber
    , pName
    , pLabels
    , pProjectId
    , pLifecycleState
    , pCreateTime

    -- * Empty
    , Empty
    , empty

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * ProjectLabels
    , ProjectLabels
    , projectLabels

    -- * Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- * ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Product
import           Network.Google.ResourceManager.Types.Sum

-- | Default request referring to version 'v1beta1' of the Google Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerRequest :: RequestBuilder
resourceManagerRequest
  = defaultRequest
      "https://cloudresourcemanager.googleapis.com/"
      ""
