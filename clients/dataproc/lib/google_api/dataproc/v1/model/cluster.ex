# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataproc.V1.Model.Cluster do
  @moduledoc """
  Describes the identifying information, config, and status of a cluster of Compute Engine instances.

  ## Attributes

  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - Required. The cluster name. Cluster names within a project must be unique. Names of deleted clusters can be reused.
  *   `clusterUuid` (*type:* `String.t`, *default:* `nil`) - Output only. A cluster UUID (Unique Universal Identifier). Cloud Dataproc generates this value when it creates the cluster.
  *   `config` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterConfig.t`, *default:* `nil`) - Required. The cluster config. Note that Cloud Dataproc may set default values, and values may change when clusters are updated.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  *   `metrics` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterMetrics.t`, *default:* `nil`) - Contains cluster daemon metrics such as HDFS and YARN stats.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. The Google Cloud Platform project ID that the cluster belongs to.
  *   `status` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterStatus.t`, *default:* `nil`) - Output only. Cluster status.
  *   `statusHistory` (*type:* `list(GoogleApi.Dataproc.V1.Model.ClusterStatus.t)`, *default:* `nil`) - Output only. The previous cluster status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t(),
          :clusterUuid => String.t(),
          :config => GoogleApi.Dataproc.V1.Model.ClusterConfig.t(),
          :labels => map(),
          :metrics => GoogleApi.Dataproc.V1.Model.ClusterMetrics.t(),
          :projectId => String.t(),
          :status => GoogleApi.Dataproc.V1.Model.ClusterStatus.t(),
          :statusHistory => list(GoogleApi.Dataproc.V1.Model.ClusterStatus.t())
        }

  field(:clusterName)
  field(:clusterUuid)
  field(:config, as: GoogleApi.Dataproc.V1.Model.ClusterConfig)
  field(:labels, type: :map)
  field(:metrics, as: GoogleApi.Dataproc.V1.Model.ClusterMetrics)
  field(:projectId)
  field(:status, as: GoogleApi.Dataproc.V1.Model.ClusterStatus)
  field(:statusHistory, as: GoogleApi.Dataproc.V1.Model.ClusterStatus, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.Cluster do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.Cluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.Cluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
