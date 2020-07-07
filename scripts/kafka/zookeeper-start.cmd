::
:: Copyright 2015-2020 Real Logic Limited.
::
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
:: https://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.
::
@echo off
setlocal EnableExtensions EnableDelayedExpansion

set KAFKA_DIR=%CD%

pushd %KAFKA_DIR%\..

call run-java.cmd -Xms1g -Xmx1g ^
  "-Dlog4j.configuration=file:%KAFKA_DIR%\log4j.properties" ^
  org.apache.zookeeper.server.quorum.QuorumPeerMain ^
  "%KAFKA_DIR%\zookeeper.properties" ^
  %*

popd