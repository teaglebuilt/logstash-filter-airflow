# encoding: utf-8
require "logstash/filters/base"
require "public_suffix"
require "idna"

Idna.configure do |config|
    config.ffi_lib = 'libidn.so.11'  # CentOS 7 and friends
  end
  Idna.reload!


class LogStash::Filters::Airflow < LogStash::Filters::Base

    config_name "airflow"

    config :source, :validate => :string, :required => true
    config :target, :validate => :string, :required => true
    config :include_unicode, :validate => :boolean, :default => true
    config :include_ascii, :validate => :boolean, :default => false

    config :tag_on_failure, :validate => :string, :default => '_airflow_filter_error'

    def register
    end

    def filter(event)
      logger.info("Filtering #{event}")
    end
end