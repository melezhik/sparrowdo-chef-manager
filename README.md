# SYNOPSIS

Sparrowdo module to manage chef users.

# Install

    $ panda install Sparrowdo::Chef::Manager

# Usage

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
    

TODO:

# Parameters

TODO:

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

# See also

* [SparrowDo](https://github.com/melezhik/sparrowdo)

