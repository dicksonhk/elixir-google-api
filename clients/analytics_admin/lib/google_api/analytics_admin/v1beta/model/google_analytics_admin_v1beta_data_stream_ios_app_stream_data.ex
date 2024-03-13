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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData do
  @moduledoc """
  Data specific to iOS app streams.

  ## Attributes

  *   `bundleId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  *   `firebaseAppId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the corresponding iOS app in Firebase, if any. This ID can change if the iOS app is deleted and recreated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundleId => String.t() | nil,
          :firebaseAppId => String.t() | nil
        }

  field(:bundleId)
  field(:firebaseAppId)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
