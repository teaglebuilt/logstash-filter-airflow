# encoding: utf-8
require_relative '../spec_helper'
require "logstash/filter/airflow"

describe LogStash::Filters::Airflow do
  describe "With basic setting" do
    let(:config) do <<-CONFIG
        filter {
          airflow {
            source => "in_field"
            target => "out_field"
          }
        }
      CONFIG
    end
  end
end