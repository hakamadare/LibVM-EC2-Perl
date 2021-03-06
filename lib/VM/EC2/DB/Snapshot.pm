package VM::EC2::DB::Snapshot;

=head1 NAME

VM::EC2::DB::Snapshot - An RDS Database Snapshot

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 STRING OVERLOADING

=head1 SEE ALSO

L<VM::EC2>
L<VM::EC2::Generic>
L<VM::EC2::DB::Instance>

=head1 AUTHOR

Lance Kinley E<lt>lkinley@loyaltymethods.comE<gt>.

Copyright (c) 2013-2014 Loyalty Methods, Inc.

This package and its accompanying libraries is free software; you can
redistribute it and/or modify it under the terms of the GPL (either
version 1, or at your option, any later version) or the Artistic
License 2.0.  Refer to LICENSE for the full license text. In addition,
please see DISCLAIMER.txt for disclaimers of warranty.

=cut

use strict;
use base 'VM::EC2::Generic';

use overload '""' => sub { shift->DBSnapshotIdentifier },
    fallback => 1;

sub valid_fields {
    my $self = shift;
    return qw(
        AllocatedStorage
        AvailabilityZone
        DBInstanceIdentifier
        DBSnapshotIdentifier
        Engine
        EngineVersion
        InstanceCreateTime
        Iops
        LicenseModel
        MasterUsername
        OptionGroupName
        PercentProgress
        Port
        SnapshotCreateTime
        SnapshotType
        SourceRegion
        Status
        VpcId
    );
}

1;
