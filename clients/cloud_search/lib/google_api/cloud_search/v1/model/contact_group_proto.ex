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

defmodule GoogleApi.CloudSearch.V1.Model.ContactGroupProto do
  @moduledoc """
  A group of contacts for a given user, as described in http://cs/p#google3/focus/backend/proto/backend.proto Historically (and in still-existing ACLs), this was used to represent Google+ circles as well as contact groups, but this use is now deprecated. New code should use the CIRCLE principal type to represent Google+ circles.

  ## Attributes

  *   `groupId` (*type:* `String.t`, *default:* `nil`) - Group ID is unique only relative to the owner's Gaia ID.
  *   `ownerGaiaId` (*type:* `String.t`, *default:* `nil`) - 
  *   `requiredConsistencyTimestampUsec` (*type:* `String.t`, *default:* `nil`) - If present, then tests for membership in this ContactGroup must use data known to be at least as fresh as the given (FBS-assigned) timestamp. See http://go/fbs-consistent-read-after-important-write Before using this, be sure that any service checking authorization against this group supports checking consistency timestamps. For example, as of 12/2011, Keystore only supports this for the Moonshine configuration, and in others authorization checks will fail if the timestamp is present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupId => String.t() | nil,
          :ownerGaiaId => String.t() | nil,
          :requiredConsistencyTimestampUsec => String.t() | nil
        }

  field(:groupId)
  field(:ownerGaiaId)
  field(:requiredConsistencyTimestampUsec)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ContactGroupProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ContactGroupProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ContactGroupProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
