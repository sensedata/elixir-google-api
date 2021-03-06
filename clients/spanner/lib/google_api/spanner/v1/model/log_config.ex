# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.LogConfig do
  @moduledoc """
  Specifies what kind of log the caller must write Increment a streamz counter with the specified metric and field names.  Metric names should start with a &#39;/&#39;, generally be lowercase-only, and end in \&quot;_count\&quot;. Field names should not contain an initial slash. The actual exported metric names will have \&quot;/iam/policy\&quot; prepended.  Field names correspond to IAM request parameters and field values are their respective values.  At present the only supported field names are    - \&quot;iam_principal\&quot;, corresponding to IAMContext.principal;    - \&quot;\&quot; (empty string), resulting in one aggretated counter with no field.  Examples:   counter { metric: \&quot;/debug_access_count\&quot;  field: \&quot;iam_principal\&quot; }   &#x3D;&#x3D;&gt; increment counter /iam/policy/backend_debug_access_count                         {iam_principal&#x3D;[value of IAMContext.principal]}  At this time we do not support: * multiple field names (though this may be supported in the future) * decrementing the counter * incrementing it by anything other than 1

  ## Attributes

  - cloudAudit (CloudAuditOptions): Cloud audit options. Defaults to: `null`.
  - counter (CounterOptions): Counter options. Defaults to: `null`.
  - dataAccess (DataAccessOptions): Data access options. Defaults to: `null`.
  """

  defstruct [
    :"cloudAudit",
    :"counter",
    :"dataAccess"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.LogConfig do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cloudAudit", :struct, GoogleApi.Spanner.V1.Model.CloudAuditOptions, options)
    |> deserialize(:"counter", :struct, GoogleApi.Spanner.V1.Model.CounterOptions, options)
    |> deserialize(:"dataAccess", :struct, GoogleApi.Spanner.V1.Model.DataAccessOptions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.LogConfig do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

