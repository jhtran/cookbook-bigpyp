bigpyp Cookbook
===============
Installs bigpyp

Requirements
------------
python

Attributes
----------

#### bigpyp::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['bigpyp']['git_repo']</tt></td>
    <td>String</td>
    <td>Git repo where bigpyp is located</td>
    <td><tt>https://myuser:mypassword@github.com/att-cloud/bigpyp</tt></td>
  </tr>
</table>

Usage
-----
#### bigpyp::default

Just include `bigpyp` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[bigpyp]"
  ]
}
```

License and Authors
-------------------
Authors: John Tran
