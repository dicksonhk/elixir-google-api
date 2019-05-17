# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Testing.V1.Model.TestExecution do
  @moduledoc """
  A single test executed in a single environment.

  ## Attributes

  - environment (Environment): Output only. How the host machine(s) are configured. Defaults to: `null`.
  - id (String.t): Output only. Unique id set by the service. Defaults to: `null`.
  - matrixId (String.t): Output only. Id of the containing TestMatrix. Defaults to: `null`.
  - projectId (String.t): Output only. The cloud project that owns the test execution. Defaults to: `null`.
  - state (String.t): Output only. Indicates the current progress of the test execution (e.g., FINISHED). Defaults to: `null`.
    - Enum - one of [TEST_STATE_UNSPECIFIED, VALIDATING, PENDING, RUNNING, FINISHED, ERROR, UNSUPPORTED_ENVIRONMENT, INCOMPATIBLE_ENVIRONMENT, INCOMPATIBLE_ARCHITECTURE, CANCELLED, INVALID]
  - testDetails (TestDetails): Output only. Additional details about the running test. Defaults to: `null`.
  - testSpecification (TestSpecification): Output only. How to run the test. Defaults to: `null`.
  - timestamp (DateTime.t): Output only. The time this test execution was initially created. Defaults to: `null`.
  - toolResultsStep (ToolResultsStep): Output only. Where the results for this execution are written. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => GoogleApi.Testing.V1.Model.Environment.t(),
          :id => any(),
          :matrixId => any(),
          :projectId => any(),
          :state => any(),
          :testDetails => GoogleApi.Testing.V1.Model.TestDetails.t(),
          :testSpecification => GoogleApi.Testing.V1.Model.TestSpecification.t(),
          :timestamp => DateTime.t(),
          :toolResultsStep => GoogleApi.Testing.V1.Model.ToolResultsStep.t()
        }

  field(:environment, as: GoogleApi.Testing.V1.Model.Environment)
  field(:id)
  field(:matrixId)
  field(:projectId)
  field(:state)
  field(:testDetails, as: GoogleApi.Testing.V1.Model.TestDetails)
  field(:testSpecification, as: GoogleApi.Testing.V1.Model.TestSpecification)
  field(:timestamp, as: DateTime)
  field(:toolResultsStep, as: GoogleApi.Testing.V1.Model.ToolResultsStep)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestExecution do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestExecution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestExecution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
