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

defmodule GoogleApi.Content.V2.Model.Account do
  @moduledoc """
  Account data.

  ## Attributes

  - adultContent (Boolean): Indicates whether the merchant sells adult content. Defaults to: `null`.
  - adwordsLinks (List[AccountAdwordsLink]): List of linked AdWords accounts that are active or pending approval. To create a new link request, add a new link with status active to the list. It will remain in a pending state until approved or rejected either in the AdWords interface or through the  AdWords API. To delete an active link, or to cancel a link request, remove it from the list. Defaults to: `null`.
  - id (String): Merchant Center account ID. Defaults to: `null`.
  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;content#account\&quot;. Defaults to: `null`.
  - name (String): Display name for the account. Defaults to: `null`.
  - reviewsUrl (String): URL for individual seller reviews, i.e., reviews for each child account. Defaults to: `null`.
  - sellerId (String): Client-specific, locally-unique, internal ID for the child account. Defaults to: `null`.
  - users (List[AccountUser]): Users with access to the account. Every account (except for subaccounts) must have at least one admin user. Defaults to: `null`.
  - websiteUrl (String): The merchant&#39;s website. Defaults to: `null`.
  """

  defstruct [
    :"adultContent",
    :"adwordsLinks",
    :"id",
    :"kind",
    :"name",
    :"reviewsUrl",
    :"sellerId",
    :"users",
    :"websiteUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Account do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"adwordsLinks", :list, GoogleApi.Content.V2.Model.AccountAdwordsLink, options)
    |> deserialize(:"users", :list, GoogleApi.Content.V2.Model.AccountUser, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Account do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

