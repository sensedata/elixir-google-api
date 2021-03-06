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

defmodule GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accounttax request.

  ## Attributes

  - accountId (String): The ID of the account for which to get/update account tax settings. Defaults to: `null`.
  - accountTax (AccountTax): The account tax settings to update. Only defined if the method is update. Defaults to: `null`.
  - batchId (Integer): An entry ID, unique within the batch request. Defaults to: `null`.
  - merchantId (String): The ID of the managing account. Defaults to: `null`.
  - method (String):  Defaults to: `null`.
  """

  defstruct [
    :"accountId",
    :"accountTax",
    :"batchId",
    :"merchantId",
    :"method"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"accountTax", :struct, GoogleApi.Content.V2.Model.AccountTax, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccounttaxCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

