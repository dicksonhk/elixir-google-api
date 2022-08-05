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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigUpdatedMetadata do
  @moduledoc """
  Annotation metadata to display system message for integration config updated event. This metadata is stored in spanner, and can be dispatched to clients without any field modification or transformation.

  ## Attributes

  *   `initiatorId` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t`, *default:* `nil`) - The user whose action triggered this system message.
  *   `mutations` (*type:* `list(GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigMutation.t)`, *default:* `nil`) - A list of updates applied on the integration config.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :initiatorId => GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId.t() | nil,
          :mutations =>
            list(GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigMutation.t()) | nil
        }

  field(:initiatorId, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteUserId)

  field(:mutations,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigMutation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigUpdatedMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigUpdatedMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteIntegrationConfigUpdatedMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
