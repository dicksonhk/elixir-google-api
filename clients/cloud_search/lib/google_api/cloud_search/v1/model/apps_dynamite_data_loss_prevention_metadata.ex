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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteDataLossPreventionMetadata do
  @moduledoc """
  Annotation metadata for Data Loss Prevention that pertains to DLP violation on message send or edit events. It is used for client -> BE communication and other downstream process in BE (e.g. storage and audit logging), and it should never be returned to the client.

  ## Attributes

  *   `dlpScanSummary` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendDlpScanSummary.t`, *default:* `nil`) - The DLP scan summary that should only be set after the message is scanned in the Chat backend.
  *   `warnAcknowledged` (*type:* `boolean()`, *default:* `nil`) - Flag set by client on message resend to bypass WARN violation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dlpScanSummary =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendDlpScanSummary.t() | nil,
          :warnAcknowledged => boolean() | nil
        }

  field(:dlpScanSummary, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteBackendDlpScanSummary)
  field(:warnAcknowledged)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteDataLossPreventionMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteDataLossPreventionMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteDataLossPreventionMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
