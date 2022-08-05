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

defmodule GoogleApi.CloudSearch.V1.Model.PhoneAccess do
  @moduledoc """
  Phone access contains information required to dial into a conference using a regional phone number and a PIN that is specific to that phone number.

  ## Attributes

  *   `formattedPhoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number to dial for this meeting space in INTERNATIONAL format. Full phone number with a leading '+' character and whitespace separations.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The BCP 47/LDML language code for the language associated with this phone access. To be parsed by the i18n LanguageCode utility. Examples: "es-419" for Latin American Spanish, "fr-CA" for Canadian French.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number to dial for this meeting space in E.164 format. Full phone number with a leading '+' character.
  *   `pin` (*type:* `String.t`, *default:* `nil`) - The PIN that users must enter after dialing the given number. The PIN consists of only decimal digits and the length may vary.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The CLDR/ISO 3166 region code for the country associated with this phone access. To be parsed by the i18n RegionCode utility. Example: "SE" for Sweden.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedPhoneNumber => String.t() | nil,
          :languageCode => String.t() | nil,
          :phoneNumber => String.t() | nil,
          :pin => String.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:formattedPhoneNumber)
  field(:languageCode)
  field(:phoneNumber)
  field(:pin)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PhoneAccess do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PhoneAccess.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PhoneAccess do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
