# group_vars

  * https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html#organizing-host-and-group-variables
  * https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html

## Directories for each group
If you have variables different from the ones in "all", you have to create a subdir named like the group in your inventory file. So in our case "example_inventory.yml" we could have:
```
windows\
  default.yml
dbservers\
  database_names.yml
east\
  other_vars_for_prod.yml
west\
  vars_for_tests.yml
```
All files ending with .yml will automatically be read.
