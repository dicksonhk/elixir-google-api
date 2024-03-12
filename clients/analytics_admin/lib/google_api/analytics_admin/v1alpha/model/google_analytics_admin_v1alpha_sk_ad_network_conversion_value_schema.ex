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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema do
  @moduledoc """
  SKAdNetwork conversion value schema of an iOS stream.

  ## Attributes

  *   `applyConversionValues` (*type:* `boolean()`, *default:* `nil`) - If enabled, the GA SDK will set conversion values using this schema definition, and schema will be exported to any Google Ads accounts linked to this property. If disabled, the GA SDK will not automatically set conversion values, and also the schema will not be exported to Ads.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the schema. This will be child of ONLY an iOS stream, and there can be at most one such child under an iOS stream. Format: properties/{property}/dataStreams/{dataStream}/sKAdNetworkConversionValueSchema
  *   `postbackWindowOne` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t`, *default:* `nil`) - Required. The conversion value settings for the first postback window. These differ from values for postback window two and three in that they contain a "Fine" grained conversion value (a numeric value). Conversion values for this postback window must be set. The other windows are optional and may inherit this window's settings if unset or disabled.
  *   `postbackWindowThree` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t`, *default:* `nil`) - The conversion value settings for the third postback window. This field should only be set if the user chose to define different conversion values for this postback window. It is allowed to configure window 3 without setting window 2. In case window 1 & 2 settings are set and enable_postback_window_settings for this postback window is set to false, the schema will inherit settings from postback_window_two.
  *   `postbackWindowTwo` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t`, *default:* `nil`) - The conversion value settings for the second postback window. This field should only be configured if there is a need to define different conversion values for this postback window. If enable_postback_window_settings is set to false for this postback window, the values from postback_window_one will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyConversionValues => boolean() | nil,
          :name => String.t() | nil,
          :postbackWindowOne =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t()
            | nil,
          :postbackWindowThree =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t()
            | nil,
          :postbackWindowTwo =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow.t()
            | nil
        }

  field(:applyConversionValues)
  field(:name)

  field(:postbackWindowOne,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow
  )

  field(:postbackWindowThree,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow
  )

  field(:postbackWindowTwo,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPostbackWindow
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaSKAdNetworkConversionValueSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
