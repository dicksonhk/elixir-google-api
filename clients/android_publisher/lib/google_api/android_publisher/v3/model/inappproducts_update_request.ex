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

defmodule GoogleApi.AndroidPublisher.V3.Model.InappproductsUpdateRequest do
  @moduledoc """
  Request to update an in-app product.

  ## Attributes

  *   `allowMissing` (*type:* `boolean()`, *default:* `nil`) - If set to true, and the in-app product with the given package_name and sku doesn't exist, the in-app product will be created.
  *   `autoConvertMissingPrices` (*type:* `boolean()`, *default:* `nil`) - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
  *   `inappproduct` (*type:* `GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t`, *default:* `nil`) - The new in-app product.
  *   `latencyTolerance` (*type:* `String.t`, *default:* `nil`) - Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Package name of the app.
  *   `sku` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the in-app product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowMissing => boolean() | nil,
          :autoConvertMissingPrices => boolean() | nil,
          :inappproduct => GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t() | nil,
          :latencyTolerance => String.t() | nil,
          :packageName => String.t() | nil,
          :sku => String.t() | nil
        }

  field(:allowMissing)
  field(:autoConvertMissingPrices)
  field(:inappproduct, as: GoogleApi.AndroidPublisher.V3.Model.InAppProduct)
  field(:latencyTolerance)
  field(:packageName)
  field(:sku)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.InappproductsUpdateRequest do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.InappproductsUpdateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.InappproductsUpdateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
