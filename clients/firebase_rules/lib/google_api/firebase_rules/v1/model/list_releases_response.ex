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

defmodule GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse do
  @moduledoc """
  The response for FirebaseRulesService.ListReleases.

  ## Attributes

  - nextPageToken (String): The pagination token to retrieve the next page of results. If the value is empty, no further results remain. Defaults to: `null`.
  - releases (List[Release]): List of &#x60;Release&#x60; instances. Defaults to: `null`.
  """

  defstruct [
    :"nextPageToken",
    :"releases"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"releases", :list, GoogleApi.FirebaseRules.V1.Model.Release, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse do
  def encode(value, options) do
    GoogleApi.FirebaseRules.V1.Deserializer.serialize_non_nil(value, options)
  end
end

