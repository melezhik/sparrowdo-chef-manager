use v6;

unit module Sparrowdo::Chef::Manager;

use Sparrowdo;

our sub tasks (%args) {

# chef-server-ctl user-create lingaan1  Anusha  "" Lingareddy  anusha.lingareddy@novartis.com 123456
# chef-server-ctl org-user-add devops  lingaan1
 
  my $action = %args<action>;
 
  if $action == 'create-user' {

    task_run %(
      task    => "create chef user",
      plugin  => "bash",
      parameters => %(
        command => 'chef-server-ctl user-create ' ~
          %args<user-id> ~  ' ' ~ %args<name>  ~ 
          ~ '""' ~  %args<last-name> ~  ' ' ~ %args<email> ~ ' ' ~ %args<password>,
        expect_stdout => '.*'
      )
    );
  
  } elsif $action == 'add-to-org' {

    task_run %(
      task    => "add chef user to organization",
      plugin  => "bash",
      parameters => %(
        command => 'chef-server-ctl org-user-add ' ~ %args<org-id> ~  ' ' ~ %args<user-id>,
        expect_stdout => '.*'
      )
    );

  }

}

