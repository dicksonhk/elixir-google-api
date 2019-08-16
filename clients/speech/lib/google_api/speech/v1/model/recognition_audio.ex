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

defmodule GoogleApi.Speech.V1.Model.RecognitionAudio do
  @moduledoc """
  Contains audio data in the encoding specified in the `RecognitionConfig`.
  Either `content` or `uri` must be supplied. Supplying both or neither
  returns google.rpc.Code.INVALID_ARGUMENT. See
  [content limits](/speech-to-text/quotas#content).

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - The audio data bytes encoded as specified in
      `RecognitionConfig`. Note: as with all bytes fields, proto buffers use a
      pure binary representation, whereas JSON representations use base64.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI that points to a file that contains audio data bytes as specified in
      `RecognitionConfig`. The file must not be compressed (for example, gzip).
      Currently, only Google Cloud Storage URIs are
      supported, which must be specified in the following format:
      `gs://bucket_name/object_name` (other URI formats return
      google.rpc.Code.INVALID_ARGUMENT). For more information, see
      [Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :uri => String.t()
        }

  field(:content)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.RecognitionAudio do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.RecognitionAudio.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.RecognitionAudio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
