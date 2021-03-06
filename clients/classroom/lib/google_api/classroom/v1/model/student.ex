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

defmodule GoogleApi.Classroom.V1.Model.Student do
  @moduledoc """
  Student in a course.

  ## Attributes

  - courseId (String): Identifier of the course.  Read-only. Defaults to: `null`.
  - profile (UserProfile): Global user information for the student.  Read-only. Defaults to: `null`.
  - studentWorkFolder (DriveFolder): Information about a Drive Folder for this student&#39;s work in this course. Only visible to the student and domain administrators.  Read-only. Defaults to: `null`.
  - userId (String): Identifier of the user.  When specified as a parameter of a request, this identifier can be one of the following:  * the numeric identifier for the user * the email address of the user * the string literal &#x60;\&quot;me\&quot;&#x60;, indicating the requesting user Defaults to: `null`.
  """

  defstruct [
    :"courseId",
    :"profile",
    :"studentWorkFolder",
    :"userId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Student do
  import GoogleApi.Classroom.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"profile", :struct, GoogleApi.Classroom.V1.Model.UserProfile, options)
    |> deserialize(:"studentWorkFolder", :struct, GoogleApi.Classroom.V1.Model.DriveFolder, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Student do
  def encode(value, options) do
    GoogleApi.Classroom.V1.Deserializer.serialize_non_nil(value, options)
  end
end

