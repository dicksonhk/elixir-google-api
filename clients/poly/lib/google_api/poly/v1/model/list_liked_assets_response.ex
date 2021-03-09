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

defmodule GoogleApi.Poly.V1.Model.ListLikedAssetsResponse do
  @moduledoc """
  A response message from a request to list.

  ## Attributes

  *   `assets` (*type:* `list(GoogleApi.Poly.V1.Model.Asset.t)`, *default:* `nil`) - A list of assets that match the criteria specified in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token for retrieving the next page. If empty, indicates that there are no more pages. To get the next page, submit the same request specifying this value as the page_token.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of assets in the list, without pagination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assets => list(GoogleApi.Poly.V1.Model.Asset.t()) | nil,
          :nextPageToken => String.t() | nil,
          :totalSize => integer() | nil
        }

  field(:assets, as: GoogleApi.Poly.V1.Model.Asset, type: :list)
  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.ListLikedAssetsResponse do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.ListLikedAssetsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.ListLikedAssetsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
