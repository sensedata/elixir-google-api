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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  @moduledoc """
  Request to fetch stored insertion orders, line items, TrueView ad groups and ads.

  ## Attributes

  - fileTypes (List[String]): File types that will be returned. Defaults to: `null`.
    - Enum - one of 
  - filterIds (List[String]): The IDs of the specified filter type. This is used to filter entities to fetch. At least one ID must be specified. Only one ID is allowed for the ADVERTISER_ID filter type. For INSERTION_ORDER_ID or LINE_ITEM_ID filter types, all IDs must be from the same Advertiser. Defaults to: `null`.
  - filterType (String): Filter type used to filter line items to fetch. Defaults to: `null`.
    - Enum - one of [ADVERTISER_ID, INSERTION_ORDER_ID, LINE_ITEM_ID]
  - version (String): SDF Version (column names, types, order) in which the entities will be returned. Default to 3. Defaults to: `null`.
  """

  defstruct [
    :"fileTypes",
    :"filterIds",
    :"filterType",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  def encode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Deserializer.serialize_non_nil(value, options)
  end
end

