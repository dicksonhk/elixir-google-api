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

defmodule GoogleApi.Calendar.V3.Model.AclRuleScope do
  @moduledoc """
  The extent to which calendar access is granted by this ACL rule.

  ## Attributes

  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the scope. Possible values are:  
      - "default" - The public scope. This is the default value. 
      - "user" - Limits the scope to a single user. 
      - "group" - Limits the scope to a group. 
      - "domain" - Limits the scope to a domain.  Note: The permissions granted to the "default", or public, scope apply to any user, authenticated or not.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type "default".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.AclRuleScope do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.AclRuleScope.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.AclRuleScope do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
