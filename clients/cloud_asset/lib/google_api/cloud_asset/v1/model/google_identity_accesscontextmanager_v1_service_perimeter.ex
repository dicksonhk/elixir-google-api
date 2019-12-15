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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter do
  @moduledoc """
  `ServicePerimeter` describes a set of GCP resources which can freely import
  and export data amongst themselves, but not export outside of the
  `ServicePerimeter`. If a request with a source within this `ServicePerimeter`
  has a target outside of the `ServicePerimeter`, the request will be blocked.
  Otherwise the request is allowed. There are two types of Service Perimeter -
  Regular and Bridge. Regular Service Perimeters cannot overlap, a single GCP
  project can only belong to a single regular Service Perimeter. Service
  Perimeter Bridges can contain only GCP projects as members, a single GCP
  project may belong to multiple Service Perimeter Bridges.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the `ServicePerimeter` was created in UTC.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the `ServicePerimeter` and its use. Does not affect
      behavior.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name for the ServicePerimeter.  The `short_name`
      component must begin with a letter and only include alphanumeric and '_'.
      Format: `accessPolicies/{policy_id}/servicePerimeters/{short_name}`
  *   `perimeterType` (*type:* `String.t`, *default:* `nil`) - Perimeter type indicator. A single project is
      allowed to be a member of single regular perimeter, but multiple service
      perimeter bridges. A project cannot be a included in a perimeter bridge
      without being included in regular perimeter. For perimeter bridges,
      the restricted service list as well as access level lists must be
      empty.
  *   `status` (*type:* `GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.t`, *default:* `nil`) - Current ServicePerimeter configuration. Specifies sets of resources,
      restricted services and access levels that determine perimeter
      content and boundaries.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Human readable title. Must be unique within the Policy.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the `ServicePerimeter` was updated in UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :description => String.t(),
          :name => String.t(),
          :perimeterType => String.t(),
          :status =>
            GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.t(),
          :title => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:perimeterType)

  field(:status,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
  )

  field(:title)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ServicePerimeter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
