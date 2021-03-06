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

defmodule GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  @moduledoc """
  Response of getting recaptcha param.

  ## Attributes

  - kind (String): The fixed string \&quot;identitytoolkit#GetRecaptchaParamResponse\&quot;. Defaults to: `null`.
  - recaptchaSiteKey (String): Site key registered at recaptcha. Defaults to: `null`.
  - recaptchaStoken (String): The stoken field for the recaptcha widget, used to request captcha challenge. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"recaptchaSiteKey",
    :"recaptchaStoken"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end

