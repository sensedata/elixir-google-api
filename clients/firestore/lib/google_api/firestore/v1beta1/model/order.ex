# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Firestore.V1beta1.Model.Order do
  @moduledoc """
  An order on a field.

  ## Attributes

  - direction (String.t): The direction to order by. Defaults to &#x60;ASCENDING&#x60;. Defaults to: `null`.
    - Enum - one of [DIRECTION_UNSPECIFIED, ASCENDING, DESCENDING]
  - field (FieldReference): The field to order by. Defaults to: `null`.
  """

  defstruct [
    :direction,
    :field
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Order do
  import GoogleApi.Firestore.V1beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:field, :struct, GoogleApi.Firestore.V1beta1.Model.FieldReference, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Order do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end
