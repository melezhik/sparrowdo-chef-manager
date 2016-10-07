use v6;

unit module Sparrowdo::Chef::Manager;

use Sparrowdo;

our sub tasks (%args) {

  my $action = %args<action>;
 
  if $action eq 'create-user' {

    task_run %(
      task    => "create chef user",
      plugin  => "bash",
      parameters => %(
        command => 'chef-server-ctl user-create --verbose --print-after ' ~
          %args<user-id> ~  ' ' ~ %args<name>  ~ 
          ~ ' "" ' ~  %args<last-name> ~  ' ' ~ %args<email> ~ ' ' ~ %args<password> ~ ' ; echo' ,
        expect_stdout => '(User\s+\S+\s+already\s+exists|BEGIN\s+RSA\s+PRIVATE\s+KEY)',
        debug => %args<debug> || False
      )
    );
  
  } elsif $action eq 'add-to-org' {

    task_run %(
      task    => "add chef user to organization",
      plugin  => "bash",
      parameters => %(
        command => 'chef-server-ctl org-user-add --verbose  ' ~ %args<org-id> ~  ' ' ~ %args<user-id>,
        expect_stdout => '.*',
        debug => %args<debug> || False
      )
    );

  } elsif $action eq 'delete-user' {

    task_run %(
      task    => "delete chef user",
      plugin  => "bash",
      parameters => %(
        command => 'chef-server-ctl  user-delete --verbose -R -y --print-after '  ~ %args<user-id> ~ ' ; echo',
        expect_stdout => '(Deleting\s+user\s+\S+|Could\s+not\s+find\s+user)',
        debug => %args<debug> || False
      )
    );

  }

}

