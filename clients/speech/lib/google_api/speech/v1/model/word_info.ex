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

defmodule GoogleApi.Speech.V1.Model.WordInfo do
  @moduledoc """
  Word-specific information for recognized words.

  ## Attributes

  *   `endTime` (*type:* `String.t`, *default:* `nil`) - Output only. Time offset relative to the beginning of the audio,
      and corresponding to the end of the spoken word.
      This field is only set if `enable_word_time_offsets=true` and only
      in the top hypothesis.
      This is an experimental feature and the accuracy of the time offset can
      vary.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Output only. Time offset relative to the beginning of the audio,
      and corresponding to the start of the spoken word.
      This field is only set if `enable_word_time_offsets=true` and only
      in the top hypothesis.
      This is an experimental feature and the accuracy of the time offset can
      vary.
  *   `word` (*type:* `String.t`, *default:* `nil`) - Output only. The word corresponding to this set of information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => String.t(),
          :startTime => String.t(),
          :word => String.t()
        }

  field(:endTime)
  field(:startTime)
  field(:word)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.WordInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.WordInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
