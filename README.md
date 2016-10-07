# SYNOPSIS

Sparrowdo module to manage chef users.

WARNING! --- This soft is far from being ideal, but at least some functions work for me.


# Install

    $ panda install Sparrowdo::Chef::Manager

# Usage

NOTE! An assumption is made that _chef server_ runs at the same host where sparrow client runs,
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

