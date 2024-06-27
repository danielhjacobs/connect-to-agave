use LWP::UserAgent;

my $ua = LWP::UserAgent->new;
my $response = $ua->get('https://agave.iplant.org/');
unless ($response->is_success) {
        die $response->status_line;
}
print $response->content;
