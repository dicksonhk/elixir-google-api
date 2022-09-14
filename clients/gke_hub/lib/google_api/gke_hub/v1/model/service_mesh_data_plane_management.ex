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

defmodule GoogleApi.GKEHub.V1.Model.ServiceMeshDataPlaneManagement do
  @moduledoc """
  Status of data plane management. Only reported per-member.

  ## Attributes

  *   `details` (*type:* `list(GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails.t)`, *default:* `nil`) - Explanation of the status.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Lifecycle status of data plane management.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => list(GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails.t()) | nil,
          :state => String.t() | nil
        }

  field(:details, as: GoogleApi.GKEHub.V1.Model.ServiceMeshStatusDetails, type: :list)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshDataPlaneManagement do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ServiceMeshDataPlaneManagement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ServiceMeshDataPlaneManagement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
