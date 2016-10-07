# SYNOPSIS

Sparrowdo module to manage chef users.

# Install

    $ panda install Sparrowdo::Chef::Manager

# Usage

NOTE! An assumption is chef server runs at the host where you run sparrow client,
as under the hood this module uses `chef-server-ctl` command. 



    module_run 'Chef::Manager', %(
      action => 'delete-user',
      user-id => 'alexey',
    );
    
    module_run 'Chef::Manager', %(
      action => 'create-user',
      user-id => 'alexey',
      email => 'sparrow.hub@gmail.com',
      name => 'Alexey',
      last-name => 'Melezhik',
      password => '123456',
      org => 'devops'
    );
    

# Parameters

TODO:

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

# See also

* [SparrowDo](https://github.com/melezhik/sparrowdo)

