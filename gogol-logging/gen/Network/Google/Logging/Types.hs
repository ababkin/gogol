{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Logging.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Logging.Types
    (
    -- * Service URL
      loggingURL

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * Log
    , Log
    , log
    , logName
    , logDisplayName
    , logPayLoadType

    -- * LogError
    , LogError
    , logError
    , leStatus
    , leResource
    , leTimeNanos

    -- * WriteLogEntriesRequest
    , WriteLogEntriesRequest
    , writeLogEntriesRequest
    , wlerEntries
    , wlerCommonLabels

    -- * WriteLogEntriesRequestCommonLabels
    , WriteLogEntriesRequestCommonLabels
    , writeLogEntriesRequestCommonLabels

    -- * RequestLog
    , RequestLog
    , requestLog
    , rlTraceId
    , rlInstanceId
    , rlStatus
    , rlRequestId
    , rlInstanceIndex
    , rlModuleId
    , rlVersionId
    , rlHTTPVersion
    , rlTaskName
    , rlPendingTime
    , rlWasLoadingRequest
    , rlStartTime
    , rlLatency
    , rlURLMapEntry
    , rlCost
    , rlReferrer
    , rlLine
    , rlIP
    , rlAppId
    , rlMethod
    , rlResource
    , rlEndTime
    , rlFinished
    , rlMegaCycles
    , rlUserAgent
    , rlNickname
    , rlHost
    , rlTaskQueueName
    , rlResponseSize
    , rlSourceReference
    , rlAppEngineRelease

    -- * Empty
    , Empty
    , empty

    -- * LogEntryMetadata
    , LogEntryMetadata
    , logEntryMetadata
    , lemSeverity
    , lemZone
    , lemUserId
    , lemServiceName
    , lemLabels
    , lemRegion
    , lemProjectId
    , lemTimestamp

    -- * ListSinksResponse
    , ListSinksResponse
    , listSinksResponse
    , lsrSinks

    -- * LogEntryProtoPayLoad
    , LogEntryProtoPayLoad
    , logEntryProtoPayLoad

    -- * ListLogServiceIndexesResponse
    , ListLogServiceIndexesResponse
    , listLogServiceIndexesResponse
    , llsirNextPageToken
    , llsirServiceIndexPrefixes

    -- * WriteLogEntriesResponse
    , WriteLogEntriesResponse
    , writeLogEntriesResponse

    -- * LogSink
    , LogSink
    , logSink
    , lsDestination
    , lsName
    , lsFilter
    , lsErrors

    -- * ListLogServicesResponse
    , ListLogServicesResponse
    , listLogServicesResponse
    , llsrNextPageToken
    , llsrLogServices

    -- * StatusDetails
    , StatusDetails
    , statusDetails

    -- * ListLogsResponse
    , ListLogsResponse
    , listLogsResponse
    , llrNextPageToken
    , llrLogs

    -- * HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprRemoteIP
    , httprRequestSize
    , httprUserAgent
    , httprResponseSize
    , httprRequestMethod
    , httprReferer

    -- * ListLogSinksResponse
    , ListLogSinksResponse
    , listLogSinksResponse
    , llsrSinks

    -- * LogService
    , LogService
    , logService
    , lName
    , lIndexKeys

    -- * ListLogServiceSinksResponse
    , ListLogServiceSinksResponse
    , listLogServiceSinksResponse
    , llssrSinks

    -- * LogLine
    , LogLine
    , logLine
    , llTime
    , llSeverity
    , llLogMessage
    , llSourceLocation

    -- * LogEntryMetadataLabels
    , LogEntryMetadataLabels
    , logEntryMetadataLabels

    -- * LogEntry
    , LogEntry
    , logEntry
    , leLog
    , leTextPayLoad
    , leHTTPRequest
    , leStructPayLoad
    , leInsertId
    , leMetadata
    , leProtoPayLoad

    -- * SourceLocation
    , SourceLocation
    , sourceLocation
    , slLine
    , slFunctionName
    , slFile

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * LogEntryStructPayLoad
    , LogEntryStructPayLoad
    , logEntryStructPayLoad
    ) where

import           Network.Google.Logging.Types.Product
import           Network.Google.Logging.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta3' of the Google Cloud Logging API.
loggingURL :: BaseUrl
loggingURL
  = BaseUrl Https "https://logging.googleapis.com/" 443