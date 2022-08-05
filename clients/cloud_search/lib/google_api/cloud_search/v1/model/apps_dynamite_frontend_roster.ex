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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendRoster do
  @moduledoc """
  Roster profile information.

  ## Attributes

  *   `avatarUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `id` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteRosterId.t`, *default:* `nil`) - 
  *   `membershipCount` (*type:* `integer()`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `rosterGaiaKey` (*type:* `String.t`, *default:* `nil`) - Roster gaia key, usually an email address. Set in looking up rosters response.
  *   `rosterState` (*type:* `String.t`, *default:* `nil`) - Roster deletion state - considered active unless set to deleted
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avatarUrl => String.t() | nil,
          :id => GoogleApi.CloudSearch.V1.Model.AppsDynamiteRosterId.t() | nil,
          :membershipCount => integer() | nil,
          :name => String.t() | nil,
          :rosterGaiaKey => String.t() | nil,
          :rosterState => String.t() | nil
        }

  field(:avatarUrl)
  field(:id, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteRosterId)
  field(:membershipCount)
  field(:name)
  field(:rosterGaiaKey)
  field(:rosterState)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendRoster do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendRoster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteFrontendRoster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
