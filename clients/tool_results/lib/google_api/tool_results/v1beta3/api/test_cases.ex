# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ToolResults.V1beta3.Api.TestCases do
  @moduledoc """
  API calls for all endpoints tagged `TestCases`.
  """

  alias GoogleApi.ToolResults.V1beta3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets details of a Test Case for a Step.
  Experimental test cases API. Still in active development.

  May return any of the following canonical error codes:

  - PERMISSION_DENIED - if the user is not authorized to write to project
  - INVALID_ARGUMENT - if the request is malformed
  - NOT_FOUND - if the containing Test Case does not exist

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ToolResults.V1beta3.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - A Project id.

      Required.
  *   `history_id` (*type:* `String.t`) - A History id.

      Required.
  *   `execution_id` (*type:* `String.t`) - A Execution id

      Required.
  *   `step_id` (*type:* `String.t`) - A Step id.
      Note: This step must include a TestExecutionStep.

      Required.
  *   `test_case_id` (*type:* `String.t`) - A Test Case id.

      Required.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ToolResults.V1beta3.Model.TestCase{}}` on success
  *   `{:error, info}` on failure
  """
  @spec toolresults_test_cases_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ToolResults.V1beta3.Model.TestCase.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def toolresults_test_cases_get(
        connection,
        project_id,
        history_id,
        execution_id,
        step_id,
        test_case_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases/{testCaseId}",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "historyId" => URI.encode(history_id, &URI.char_unreserved?/1),
          "executionId" => URI.encode(execution_id, &URI.char_unreserved?/1),
          "stepId" => URI.encode(step_id, &URI.char_unreserved?/1),
          "testCaseId" => URI.encode(test_case_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ToolResults.V1beta3.Model.TestCase{}])
  end

  @doc """
  Lists Test Cases attached to a Step.
  Experimental test cases API. Still in active development.

  May return any of the following canonical error codes:

  - PERMISSION_DENIED - if the user is not authorized to write to project
  - INVALID_ARGUMENT - if the request is malformed
  - NOT_FOUND - if the containing Step does not exist

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ToolResults.V1beta3.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - A Project id.

      Required.
  *   `history_id` (*type:* `String.t`) - A History id.

      Required.
  *   `execution_id` (*type:* `String.t`) - A Execution id

      Required.
  *   `step_id` (*type:* `String.t`) - A Step id.
      Note: This step must include a TestExecutionStep.

      Required.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - The maximum number of TestCases to fetch.

          Default value: 100. The server will use this default if the field is not
          set or has a value of 0.

          Optional.
      *   `:pageToken` (*type:* `String.t`) - A continuation token to resume the query at the next item.

          Optional.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ToolResults.V1beta3.Model.ListTestCasesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec toolresults_test_cases_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ToolResults.V1beta3.Model.ListTestCasesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def toolresults_test_cases_list(
        connection,
        project_id,
        history_id,
        execution_id,
        step_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "historyId" => URI.encode(history_id, &URI.char_unreserved?/1),
          "executionId" => URI.encode(execution_id, &URI.char_unreserved?/1),
          "stepId" => URI.encode(step_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ToolResults.V1beta3.Model.ListTestCasesResponse{}]
    )
  end
end
