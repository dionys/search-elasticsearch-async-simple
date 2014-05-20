package Search::Elasticsearch::Client::Direct::Async::Nodes;

use Moo;

extends 'Search::Elasticsearch::Client::Direct::Nodes';
with    'Search::Elasticsearch::Role::API';
with    'Search::Elasticsearch::Role::Client::Direct::Async';


__PACKAGE__->_install_api('nodes');


1;
