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

defmodule GoogleApi.Sheets.V4.Model.ValueRange do
  @moduledoc """
  Data within a range of the spreadsheet.

  ## Attributes

  - majorDimension (String.t): The major dimension of the values.  For output, if the spreadsheet data is: &#x60;A1&#x3D;1,B1&#x3D;2,A2&#x3D;3,B2&#x3D;4&#x60;, then requesting &#x60;range&#x3D;A1:B2,majorDimension&#x3D;ROWS&#x60; will return &#x60;[[1,2],[3,4]]&#x60;, whereas requesting &#x60;range&#x3D;A1:B2,majorDimension&#x3D;COLUMNS&#x60; will return &#x60;[[1,3],[2,4]]&#x60;.  For input, with &#x60;range&#x3D;A1:B2,majorDimension&#x3D;ROWS&#x60; then &#x60;[[1,2],[3,4]]&#x60; will set &#x60;A1&#x3D;1,B1&#x3D;2,A2&#x3D;3,B2&#x3D;4&#x60;. With &#x60;range&#x3D;A1:B2,majorDimension&#x3D;COLUMNS&#x60; then &#x60;[[1,2],[3,4]]&#x60; will set &#x60;A1&#x3D;1,B1&#x3D;3,A2&#x3D;2,B2&#x3D;4&#x60;.  When writing, if this field is not set, it defaults to ROWS. Defaults to: `null`.
    - Enum - one of [DIMENSION_UNSPECIFIED, ROWS, COLUMNS]
  - range (String.t): The range the values cover, in A1 notation. For output, this range indicates the entire requested range, even though the values will exclude trailing rows and columns. When appending values, this field represents the range to search for a table, after which values will be appended. Defaults to: `null`.
  - values ([[ErrorUnknown]]): The data that was read or to be written.  This is an array of arrays, the outer array representing all the data and each inner array representing a major dimension. Each item in the inner array corresponds with one cell.  For output, empty trailing rows and columns will not be included.  For input, supported value types are: bool, string, and double. Null values will be skipped. To set a cell to an empty value, set the string value to an empty string. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          majorDimension: any(),
          range: any(),
          values: any()
        }

  defstruct [
    :majorDimension,
    :range,
    :values
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ValueRange do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ValueRange do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
