#
# Cookbook Name:: bigpyp
# Recipe:: default
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

include_recipe "python::pip"

install_dir = node.bigpyp[:install_dir]

git install_dir do
  repository node.bigpyp[:git_repo]
  reference node.bigpyp[:git_ref]
  notifies :run, "python_pip[#{install_dir}]"
  action :sync
end

python_pip install_dir

# generate the config file based on zone

vips = search('vips', "*:*")

#template "#{install_dir}/conf/#{zone}_vips.yml"
template "/tmp/#{node['zone']}_vips.yml" do
  source "zone_vips.yml.erb"
  mode 0755
  variables(:vips => vips)
end
