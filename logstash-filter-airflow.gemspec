Gem::Specification.new do |s|
    s.name = 'logstash-filter-airflow'
    s.version       = '0.1.0'
    s.licenses      = ['Apache-2.0']
    s.summary       = 'A logstash filter plugin for summarising airflow logs'
    s.description   = 'Given airflow logs are delivered. This plugin provides an easy ability to format and organize into objectable events'
    s.homepage      = 'https://github.com/cameronkerrnz/logstash-filter-dnssummary'
    s.authors       = ['Dillan Teagle']
    s.email         = 'dillan.teagle.va@gmail.com'
    s.require_paths = ['lib']
    s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
    s.test_files = s.files.grep(%r{^(test|spec|features)/})
    s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }
    s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
    s.add_runtime_dependency 'public_suffix', '~> 3'
    s.add_runtime_dependency 'idna', '~> 0.1.0'   # requires libidn, but you need to specify the version (eg. 'libidn.so.11' in dnssummary.rb)
    s.add_development_dependency 'logstash-devutils'
end