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

defmodule GoogleApi.CloudResourceManager.V1.Model.ListPolicy do
  @moduledoc """
  Used in &#x60;policy_type&#x60; to specify how &#x60;list_policy&#x60; behaves at this resource.  A &#x60;ListPolicy&#x60; can define specific values that are allowed or denied by setting either the &#x60;allowed_values&#x60; or &#x60;denied_values&#x60; fields. It can also be used to allow or deny all values, by setting the &#x60;all_values&#x60; field. If &#x60;all_values&#x60; is &#x60;ALL_VALUES_UNSPECIFIED&#x60;, exactly one of &#x60;allowed_values&#x60; or &#x60;denied_values&#x60; must be set (attempting to set both or neither will result in a failed request). If &#x60;all_values&#x60; is set to either &#x60;ALLOW&#x60; or &#x60;DENY&#x60;, &#x60;allowed_values&#x60; and &#x60;denied_values&#x60; must be unset.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"allValues",
    :"allowedValues",
    :"deniedValues",
    :"inheritFromParent",
    :"suggestedValue"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.ListPolicy do
  def decode(value, _options) do
    value
  end
end

