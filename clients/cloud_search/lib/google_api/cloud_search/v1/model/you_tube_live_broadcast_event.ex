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

defmodule GoogleApi.CloudSearch.V1.Model.YouTubeLiveBroadcastEvent do
  @moduledoc """
  Information about the broadcast to YouTube.

  ## Attributes

  *   `broadcastId` (*type:* `String.t`, *default:* `nil`) - Input only. The broadcast id, used to control the lifecycle of the event on YouTube
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - YouTube channel associated with the broadcast.
  *   `viewUrl` (*type:* `String.t`, *default:* `nil`) - Output only. A URL that can be used to watch the meeting broadcast. Will be populated by the backend.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :broadcastId => String.t() | nil,
          :channelId => String.t() | nil,
          :viewUrl => String.t() | nil
        }

  field(:broadcastId)
  field(:channelId)
  field(:viewUrl)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.YouTubeLiveBroadcastEvent do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.YouTubeLiveBroadcastEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.YouTubeLiveBroadcastEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
