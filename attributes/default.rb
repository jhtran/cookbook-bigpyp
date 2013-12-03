#
# Cookbook Name:: bigpyp
# Attributes:: default
#
# Copyright 2013, John Tran
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ghcreds = Chef::EncryptedDataBagItem.load('secrets', 'github_creds') rescue {}
ghuser = ghcreds["username"]
ghpw = ghcreds["password"]

node.default[:bigpyp] ||= {}

default.bigpyp[:install_dir] = "/opt/bigpyp"
default.bigpyp[:git_repo] = "https://#{ghuser}:#{ghpw}@github.com/att-cloud/bigpyp"
default.bigpyp[:git_ref] = "master"
