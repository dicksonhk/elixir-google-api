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

defmodule GoogleApi.AndroidPublisher.V3.Model.CreateDraftAppRecoveryRequest do
  @moduledoc """
  Request message for CreateDraftAppRecovery.

  ## Attributes

  *   `remoteInAppUpdate` (*type:* `GoogleApi.AndroidPublisher.V3.Model.RemoteInAppUpdate.t`, *default:* `nil`) - Action type is remote in-app update. As a consequence of this action, a downloadable recovery module is also created for testing purposes.
  *   `targeting` (*type:* `GoogleApi.AndroidPublisher.V3.Model.Targeting.t`, *default:* `nil`) - Specifies targeting criteria for the recovery action such as regions, android sdk versions, app versions etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :remoteInAppUpdate => GoogleApi.AndroidPublisher.V3.Model.RemoteInAppUpdate.t() | nil,
          :targeting => GoogleApi.AndroidPublisher.V3.Model.Targeting.t() | nil
        }

  field(:remoteInAppUpdate, as: GoogleApi.AndroidPublisher.V3.Model.RemoteInAppUpdate)
  field(:targeting, as: GoogleApi.AndroidPublisher.V3.Model.Targeting)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.CreateDraftAppRecoveryRequest do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.CreateDraftAppRecoveryRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.CreateDraftAppRecoveryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
