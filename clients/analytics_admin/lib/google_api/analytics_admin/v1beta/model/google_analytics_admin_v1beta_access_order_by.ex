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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderBy do
  @moduledoc """
  Order bys define how rows will be sorted in the response. For example, ordering rows by descending access count is one ordering, and ordering rows by the country string is a different ordering.

  ## Attributes

  *   `desc` (*type:* `boolean()`, *default:* `nil`) - If true, sorts by descending order. If false or unspecified, sorts in ascending order.
  *   `dimension` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy.t`, *default:* `nil`) - Sorts results by a dimension's values.
  *   `metric` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy.t`, *default:* `nil`) - Sorts results by a metric's values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desc => boolean() | nil,
          :dimension =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy.t()
            | nil,
          :metric =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy.t()
            | nil
        }

  field(:desc)

  field(:dimension,
    as:
      GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy
  )

  field(:metric,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderBy do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderBy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessOrderBy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
