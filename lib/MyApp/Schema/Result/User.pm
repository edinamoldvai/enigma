use utf8;
package MyApp::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<Users>

=cut

__PACKAGE__->table("Users");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 display_name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 password

  data_type: 'char'
  is_nullable: 0
  size: 41

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "display_name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "password",
  { data_type => "char", is_nullable => 0, size => 41 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<email>

=over 4

=item * L</email>

=back

=cut

__PACKAGE__->add_unique_constraint("email", ["email"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-09-26 02:21:51
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:X46wZl1J1lf1aY0xWdY8Kw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
