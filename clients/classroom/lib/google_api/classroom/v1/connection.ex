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

defmodule GoogleApi.Classroom.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Classroom.V1.
  """

  use Tesla

  # Add any middleware here (authentication)
  plug Tesla.Middleware.BaseUrl, "https://classroom.googleapis.com"
  plug Tesla.Middleware.Headers, %{"User-Agent" => "Elixir"}
  plug Tesla.Middleware.EncodeJson

  @scopes [
    "https://www.googleapis.com/auth/classroom.courses", # Manage your Google Classroom classes
    "https://www.googleapis.com/auth/classroom.courses.readonly", # View your Google Classroom classes
    "https://www.googleapis.com/auth/classroom.coursework.me", # Manage your course work and view your grades in Google Classroom
    "https://www.googleapis.com/auth/classroom.coursework.me.readonly", # View your course work and grades in Google Classroom
    "https://www.googleapis.com/auth/classroom.coursework.students", # Manage course work and grades for students in the Google Classroom classes you teach and view the course work and grades for classes you administer
    "https://www.googleapis.com/auth/classroom.coursework.students.readonly", # View course work and grades for students in the Google Classroom classes you teach or administer
    "https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly", # View your Google Classroom guardians
    "https://www.googleapis.com/auth/classroom.guardianlinks.students", # View and manage guardians for students in your Google Classroom classes
    "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly", # View guardians for students in your Google Classroom classes
    "https://www.googleapis.com/auth/classroom.profile.emails", # View the email addresses of people in your classes
    "https://www.googleapis.com/auth/classroom.profile.photos", # View the profile photos of people in your classes
    "https://www.googleapis.com/auth/classroom.rosters", # Manage your Google Classroom class rosters
    "https://www.googleapis.com/auth/classroom.rosters.readonly", # View your Google Classroom class rosters
    "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly", # View your course work and grades in Google Classroom
    "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly" # View course work and grades for students in the Google Classroom classes you teach or administer
  ]

  @doc """
  Configure a client connection using a provided OAuth2 token as a Bearer token

  ## Parameters

  - token (String): Bearer token

  ## Returns

  Tesla.Env.client
  """
  @spec new(String.t) :: Tesla.Env.client
  def new(token) when is_binary(token) do
    Tesla.build_client([
      {Tesla.Middleware.Headers,  %{"Authorization" => "Bearer #{token}"}}
    ])
  end

  @doc """
  Configure a client connection using a function which yields a Bearer token.

  ## Parameters

  - token_fetcher (function arity of 1): Callback which provides an OAuth2 token
    given a list of scopes

  ## Returns

  Tesla.Env.client
  """
  @spec new(((list(String.t)) -> String.t)) :: Tesla.Env.client
  def new(token_fetcher) when is_function(token_fetcher) do
    token_fetcher.(@scopes)
    |> new
  end
  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client
  def new do
    Tesla.build_client([])
  end
end
