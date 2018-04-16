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

defmodule GoogleApi.Firestore.V1beta1.Model.RunQueryRequest do
  @moduledoc """
  The request for Firestore.RunQuery.

  ## Attributes

  - newTransaction (TransactionOptions): Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new transaction ID will be returned as the first response in the stream. Defaults to: `null`.
  - readTime (String.t): Reads documents as they were at the given time. This may not be older than 60 seconds. Defaults to: `null`.
  - structuredQuery (StructuredQuery): A structured query. Defaults to: `null`.
  - transaction (binary()): Reads documents in a transaction. Defaults to: `null`.
  """

  defstruct [
    :newTransaction,
    :readTime,
    :structuredQuery,
    :transaction
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.RunQueryRequest do
  import GoogleApi.Firestore.V1beta1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :newTransaction,
      :struct,
      GoogleApi.Firestore.V1beta1.Model.TransactionOptions,
      options
    )
    |> deserialize(
      :structuredQuery,
      :struct,
      GoogleApi.Firestore.V1beta1.Model.StructuredQuery,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.RunQueryRequest do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end
