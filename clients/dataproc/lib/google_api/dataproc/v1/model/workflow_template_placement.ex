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

defmodule GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement do
  @moduledoc """
  Specifies workflow execution target.Either managed_cluster or cluster_selector is required.

  ## Attributes

  *   `clusterSelector` (*type:* `GoogleApi.Dataproc.V1.Model.ClusterSelector.t`, *default:* `nil`) - Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  *   `managedCluster` (*type:* `GoogleApi.Dataproc.V1.Model.ManagedCluster.t`, *default:* `nil`) - Optional. A cluster that is managed by the workflow.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterSelector => GoogleApi.Dataproc.V1.Model.ClusterSelector.t(),
          :managedCluster => GoogleApi.Dataproc.V1.Model.ManagedCluster.t()
        }

  field(:clusterSelector, as: GoogleApi.Dataproc.V1.Model.ClusterSelector)
  field(:managedCluster, as: GoogleApi.Dataproc.V1.Model.ManagedCluster)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
