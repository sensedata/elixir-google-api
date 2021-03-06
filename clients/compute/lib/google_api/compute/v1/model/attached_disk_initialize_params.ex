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

defmodule GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  @moduledoc """
  [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance.  This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"diskName",
    :"diskSizeGb",
    :"diskType",
    :"sourceImage",
    :"sourceImageEncryptionKey"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  import GoogleApi.Compute.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sourceImageEncryptionKey", :struct, GoogleApi.Compute.V1.Model.CustomerEncryptionKey, options)
  end
end

