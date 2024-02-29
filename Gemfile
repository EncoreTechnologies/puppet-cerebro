# Managed by modulesync - DO NOT EDIT
# https://voxpupuli.org/docs/updating-files-managed-with-modulesync/

source ENV['GEM_SOURCE'] || 'https://rubygems.org'

group :development do
  gem 'puppet-blacksmith', '>= 5.0.0',                                          :require => false
  gem 'puppet-lint-absolute_template_path', '>= 1.0.1',                         :require => false
  gem 'puppet-lint-alias-check', '>= 0.1.1',                                    :require => false
  gem 'puppet-lint-classes_and_types_beginning_with_digits-check', '>= 0.1.2',  :require => false
  gem 'puppet-lint-concatenated_template_files-check', '>= 0.1.1',              :require => false
  gem 'puppet-lint-file_ensure-check', '>= 0.3.1',                              :require => false
  gem 'puppet-lint-file_source_rights-check', '>= 0.1.1',                       :require => false
  gem 'puppet-lint-leading_zero-check', '>= 0.1.1',                             :require => false
  gem 'puppet-lint-resource_reference_syntax', '>= 1.0.10',                     :require => false
  gem 'puppet-lint-trailing_comma-check', '>= 0.3.2',                           :require => false
  gem 'puppet-lint-unquoted_string-check', '>= 0.3.0',                          :require => false
  gem 'puppet-lint-version_comparison-check', '>= 0.2.1',                       :require => false
  gem 'ruby-pwsh', '>= 0.3.0',                                                  :require => false
  gem 'r10k', '>= 3.0.0',                                                       :require => false
  gem 'cri', '2.15.6',                                                          :require => false
  gem 'yaml-lint', '>= 0.0.10',                                                 :require => false
end

gem 'rake', :require => false
gem 'facter', ENV['FACTER_GEM_VERSION'], :require => false, :groups => [:test]

puppetversion = ENV['PUPPET_GEM_VERSION'] || '~> 7.24'
gem 'puppet', puppetversion, :require => false, :groups => [:test]

# vim: syntax=ruby
