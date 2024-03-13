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

defmodule GoogleApi.Looker.V1.Model.Instance do
  @moduledoc """
  A Looker instance.

  ## Attributes

  *   `adminSettings` (*type:* `GoogleApi.Looker.V1.Model.AdminSettings.t`, *default:* `nil`) - Looker Instance Admin settings.
  *   `consumerNetwork` (*type:* `String.t`, *default:* `nil`) - Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Looker instance provisioning was first requested.
  *   `customDomain` (*type:* `GoogleApi.Looker.V1.Model.CustomDomain.t`, *default:* `nil`) - 
  *   `denyMaintenancePeriod` (*type:* `GoogleApi.Looker.V1.Model.DenyMaintenancePeriod.t`, *default:* `nil`) - Maintenance denial period for this instance.
  *   `egressPublicIp` (*type:* `String.t`, *default:* `nil`) - Output only. Public Egress IP (IPv4).
  *   `encryptionConfig` (*type:* `GoogleApi.Looker.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  *   `ingressPrivateIp` (*type:* `String.t`, *default:* `nil`) - Output only. Private Ingress IP (IPv4).
  *   `ingressPublicIp` (*type:* `String.t`, *default:* `nil`) - Output only. Public Ingress IP (IPv4).
  *   `lastDenyMaintenancePeriod` (*type:* `GoogleApi.Looker.V1.Model.DenyMaintenancePeriod.t`, *default:* `nil`) - Output only. Last computed maintenance denial period for this instance.
  *   `linkedLspProjectNumber` (*type:* `String.t`, *default:* `nil`) - Optional. Linked Google Cloud Project Number for Looker Studio Pro.
  *   `lookerUri` (*type:* `String.t`, *default:* `nil`) - Output only. Looker instance URI which can be used to access the Looker Instance UI.
  *   `lookerVersion` (*type:* `String.t`, *default:* `nil`) - Output only. The Looker version that the instance is using.
  *   `maintenanceSchedule` (*type:* `GoogleApi.Looker.V1.Model.MaintenanceSchedule.t`, *default:* `nil`) - Maintenance schedule for this instance.
  *   `maintenanceWindow` (*type:* `GoogleApi.Looker.V1.Model.MaintenanceWindow.t`, *default:* `nil`) - Maintenance window for this instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Format: `projects/{project}/locations/{location}/instances/{instance}`.
  *   `oauthConfig` (*type:* `GoogleApi.Looker.V1.Model.OAuthConfig.t`, *default:* `nil`) - Looker instance OAuth login settings.
  *   `platformEdition` (*type:* `String.t`, *default:* `nil`) - Platform edition.
  *   `privateIpEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether private IP is enabled on the Looker instance.
  *   `publicIpEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether public IP is enabled on the Looker instance.
  *   `reservedRange` (*type:* `String.t`, *default:* `nil`) - Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the instance.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Looker instance was last updated.
  *   `userMetadata` (*type:* `GoogleApi.Looker.V1.Model.UserMetadata.t`, *default:* `nil`) - User metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminSettings => GoogleApi.Looker.V1.Model.AdminSettings.t() | nil,
          :consumerNetwork => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :customDomain => GoogleApi.Looker.V1.Model.CustomDomain.t() | nil,
          :denyMaintenancePeriod => GoogleApi.Looker.V1.Model.DenyMaintenancePeriod.t() | nil,
          :egressPublicIp => String.t() | nil,
          :encryptionConfig => GoogleApi.Looker.V1.Model.EncryptionConfig.t() | nil,
          :ingressPrivateIp => String.t() | nil,
          :ingressPublicIp => String.t() | nil,
          :lastDenyMaintenancePeriod => GoogleApi.Looker.V1.Model.DenyMaintenancePeriod.t() | nil,
          :linkedLspProjectNumber => String.t() | nil,
          :lookerUri => String.t() | nil,
          :lookerVersion => String.t() | nil,
          :maintenanceSchedule => GoogleApi.Looker.V1.Model.MaintenanceSchedule.t() | nil,
          :maintenanceWindow => GoogleApi.Looker.V1.Model.MaintenanceWindow.t() | nil,
          :name => String.t() | nil,
          :oauthConfig => GoogleApi.Looker.V1.Model.OAuthConfig.t() | nil,
          :platformEdition => String.t() | nil,
          :privateIpEnabled => boolean() | nil,
          :publicIpEnabled => boolean() | nil,
          :reservedRange => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :userMetadata => GoogleApi.Looker.V1.Model.UserMetadata.t() | nil
        }

  field(:adminSettings, as: GoogleApi.Looker.V1.Model.AdminSettings)
  field(:consumerNetwork)
  field(:createTime, as: DateTime)
  field(:customDomain, as: GoogleApi.Looker.V1.Model.CustomDomain)
  field(:denyMaintenancePeriod, as: GoogleApi.Looker.V1.Model.DenyMaintenancePeriod)
  field(:egressPublicIp)
  field(:encryptionConfig, as: GoogleApi.Looker.V1.Model.EncryptionConfig)
  field(:ingressPrivateIp)
  field(:ingressPublicIp)
  field(:lastDenyMaintenancePeriod, as: GoogleApi.Looker.V1.Model.DenyMaintenancePeriod)
  field(:linkedLspProjectNumber)
  field(:lookerUri)
  field(:lookerVersion)
  field(:maintenanceSchedule, as: GoogleApi.Looker.V1.Model.MaintenanceSchedule)
  field(:maintenanceWindow, as: GoogleApi.Looker.V1.Model.MaintenanceWindow)
  field(:name)
  field(:oauthConfig, as: GoogleApi.Looker.V1.Model.OAuthConfig)
  field(:platformEdition)
  field(:privateIpEnabled)
  field(:publicIpEnabled)
  field(:reservedRange)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:userMetadata, as: GoogleApi.Looker.V1.Model.UserMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Looker.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Looker.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Looker.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
