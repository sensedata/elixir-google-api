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

defmodule GoogleApi.Partners.V2.Model.ExamToken do
  @moduledoc """
  A token that allows a user to take an exam.

  ## Attributes

  - examId (String): The id of the exam the token is for. Defaults to: `null`.
  - examType (String): The type of the exam the token belongs to. Defaults to: `null`.
    - Enum - one of [CERTIFICATION_EXAM_TYPE_UNSPECIFIED, CET_ADWORDS_FUNDAMENTALS, CET_ADWORDS_ADVANCED_SEARCH, CET_ADWORDS_ADVANCED_DISPLAY, CET_VIDEO_ADS, CET_DOUBLECLICK, CET_ANALYTICS, CET_SHOPPING, CET_MOBILE, CET_DIGITAL_SALES, CET_MOBILE_SITES]
  - token (String): The token, only present if the user has access to the exam. Defaults to: `null`.
  """

  defstruct [
    :"examId",
    :"examType",
    :"token"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.ExamToken do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.ExamToken do
  def encode(value, options) do
    GoogleApi.Partners.V2.Deserializer.serialize_non_nil(value, options)
  end
end

