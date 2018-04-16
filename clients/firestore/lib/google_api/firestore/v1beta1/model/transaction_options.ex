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

defmodule GoogleApi.Firestore.V1beta1.Model.TransactionOptions do
  @moduledoc """
  Options for creating a new transaction.

  ## Attributes

  - readOnly (ReadOnly): The transaction can only be used for read operations. Defaults to: `null`.
  - readWrite (ReadWrite): The transaction can be used for both read and write operations. Defaults to: `null`.
  """

  defstruct [
    :readOnly,
    :readWrite
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.TransactionOptions do
  import GoogleApi.Firestore.V1beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:readOnly, :struct, GoogleApi.Firestore.V1beta1.Model.ReadOnly, options)
    |> deserialize(:readWrite, :struct, GoogleApi.Firestore.V1beta1.Model.ReadWrite, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.TransactionOptions do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end
