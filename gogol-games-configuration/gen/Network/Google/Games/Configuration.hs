{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games.Configuration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Publishing API for Google Play Game Services.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference>
module Network.Google.Games.Configuration
    (
    -- * Resources
      GamesConfiguration
    , ImageConfigurationsAPI
    , ImageConfigurationsUpload
    , LeaderboardConfigurationsAPI
    , LeaderboardConfigurationsInsert
    , LeaderboardConfigurationsList
    , LeaderboardConfigurationsPatch
    , LeaderboardConfigurationsGet
    , LeaderboardConfigurationsDelete
    , LeaderboardConfigurationsUpdate
    , AchievementConfigurationsAPI
    , AchievementConfigurationsInsert
    , AchievementConfigurationsList
    , AchievementConfigurationsPatch
    , AchievementConfigurationsGet
    , AchievementConfigurationsDelete
    , AchievementConfigurationsUpdate

    -- * Types

    -- ** AchievementConfiguration
    , AchievementConfiguration
    , achievementConfiguration
    , acAchievementType
    , acStepsToUnlock
    , acKind
    , acPublished
    , acToken
    , acInitialState
    , acDraft
    , acId

    -- ** AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconUrl
    , acdDescription

    -- ** AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- ** GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- ** GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- ** ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icUrl
    , icImageType

    -- ** LeaderboardConfiguration
    , LeaderboardConfiguration
    , leaderboardConfiguration
    , lcScoreMax
    , lcKind
    , lcPublished
    , lcToken
    , lcScoreMin
    , lcDraft
    , lcId
    , lcScoreOrder

    -- ** LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconUrl

    -- ** LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- ** LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- ** LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GamesConfiguration =
     ImageConfigurationsAPI :<|>
       LeaderboardConfigurationsAPI
       :<|> AchievementConfigurationsAPI

type ImageConfigurationsAPI =
     ImageConfigurationsUpload

-- | Uploads an image for a resource with the given ID and image type.
type ImageConfigurationsUpload =
     "games" :>
       "v1configuration" :>
         "images" :>
           Capture "resourceId" Text :>
             "imageType" :>
               Capture "imageType" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] ImageConfiguration

type LeaderboardConfigurationsAPI =
     LeaderboardConfigurationsInsert :<|>
       LeaderboardConfigurationsList
       :<|> LeaderboardConfigurationsPatch
       :<|> LeaderboardConfigurationsGet
       :<|> LeaderboardConfigurationsDelete
       :<|> LeaderboardConfigurationsUpdate

-- | Insert a new leaderboard configuration in this application.
type LeaderboardConfigurationsInsert =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "leaderboards" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON] LeaderboardConfiguration

-- | Returns a list of the leaderboard configurations in this application.
type LeaderboardConfigurationsList =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "leaderboards" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Natural :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON]
                                   LeaderboardConfigurationListResponse

-- | Update the metadata of the leaderboard configuration with the given ID.
-- This method supports patch semantics.
type LeaderboardConfigurationsPatch =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Patch '[JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
type LeaderboardConfigurationsGet =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Get '[JSON] LeaderboardConfiguration

-- | Delete the leaderboard configuration with the given ID.
type LeaderboardConfigurationsDelete =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Delete '[JSON] ()

-- | Update the metadata of the leaderboard configuration with the given ID.
type LeaderboardConfigurationsUpdate =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Put '[JSON] LeaderboardConfiguration

type AchievementConfigurationsAPI =
     AchievementConfigurationsInsert :<|>
       AchievementConfigurationsList
       :<|> AchievementConfigurationsPatch
       :<|> AchievementConfigurationsGet
       :<|> AchievementConfigurationsDelete
       :<|> AchievementConfigurationsUpdate

-- | Insert a new achievement configuration in this application.
type AchievementConfigurationsInsert =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "achievements" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON] AchievementConfiguration

-- | Returns a list of the achievement configurations in this application.
type AchievementConfigurationsList =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "achievements" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Natural :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON]
                                   AchievementConfigurationListResponse

-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
type AchievementConfigurationsPatch =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Patch '[JSON] AchievementConfiguration

-- | Retrieves the metadata of the achievement configuration with the given
-- ID.
type AchievementConfigurationsGet =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Get '[JSON] AchievementConfiguration

-- | Delete the achievement configuration with the given ID.
type AchievementConfigurationsDelete =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Delete '[JSON] ()

-- | Update the metadata of the achievement configuration with the given ID.
type AchievementConfigurationsUpdate =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Put '[JSON] AchievementConfiguration