# InSpec test for recipe cb_nginx::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe file('/etc/yum.repos.d/nginx.repo') do
  it { should exist }
  its('content') { should include('enabled=1') }
  its('content') { should include('baseurl=https://nginx.org/packages/centos/8/$basearch') }
  its('content') { should include('gpgkey=https://nginx.org/keys/nginx_signing.key') }
  its('content') { should include('name=Nginx.org Repository') }
end

describe yum.repo('nginx') do
  it { should exist }
  it { should be_enabled }
end
