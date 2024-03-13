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

defmodule GoogleApi.Looker.V1.Model.DenyMaintenancePeriod do
  @moduledoc """
  Specifies the maintenance denial period.

  ## Attributes

  *   `endDate` (*type:* `GoogleApi.Looker.V1.Model.Date.t`, *default:* `nil`) - Required. End date of the deny maintenance period.
  *   `startDate` (*type:* `GoogleApi.Looker.V1.Model.Date.t`, *default:* `nil`) - Required. Start date of the deny maintenance period.
  *   `time` (*type:* `GoogleApi.Looker.V1.Model.TimeOfDay.t`, *default:* `nil`) - Required. Time in UTC when the period starts and ends.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => GoogleApi.Looker.V1.Model.Date.t() | nil,
          :startDate => GoogleApi.Looker.V1.Model.Date.t() | nil,
          :time => GoogleApi.Looker.V1.Model.TimeOfDay.t() | nil
        }

  field(:endDate, as: GoogleApi.Looker.V1.Model.Date)
  field(:startDate, as: GoogleApi.Looker.V1.Model.Date)
  field(:time, as: GoogleApi.Looker.V1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.Looker.V1.Model.DenyMaintenancePeriod do
  def decode(value, options) do
    GoogleApi.Looker.V1.Model.DenyMaintenancePeriod.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Looker.V1.Model.DenyMaintenancePeriod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
