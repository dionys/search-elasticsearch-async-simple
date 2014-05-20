package Search::Elasticsearch::Client::Direct::Async::Cat;

use Moo;

use Search::Elasticsearch::Util qw(parse_params);

extends 'Search::Elasticsearch::Client::Direct::Cat';
with    'Search::Elasticsearch::Role::API';
with    'Search::Elasticsearch::Role::Client::Direct::Async';


__PACKAGE__->_install_api('cat');


sub help {
	my $cb = pop();
	my ($self, $pars) = parse_params(@_);

	$pars->{help} = 1;

	my $defn = $self->api->{'cat.help'};

	$self->perform_request($defn, $pars, $cb);

	return;
}


1;
