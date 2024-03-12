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

defmodule GoogleApi.AndroidPublisher.V3.Model.SafetyLabelsUpdateRequest do
  @moduledoc """
  Request to update Safety Labels of an app.

  ## Attributes

  *   `safetyLabels` (*type:* `String.t`, *default:* `nil`) - Required. Contents of the CSV file containing Data Safety responses. For the format of this file, see the Help Center documentation at https://support.google.com/googleplay/android-developer/answer/10787469?#zippy=%2Cunderstand-the-csv-format To download an up to date template, follow the steps at https://support.google.com/googleplay/android-developer/answer/10787469?#zippy=%2Cexport-to-a-csv-file
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :safetyLabels => String.t() | nil
        }

  field(:safetyLabels)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SafetyLabelsUpdateRequest do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SafetyLabelsUpdateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SafetyLabelsUpdateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
