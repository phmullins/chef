#
# Cookbook:: chef_nginx
# Spec:: default
#
# Copyright:: 2017, pmullins11@gmail.com, All Rights Reserved.

require 'spec_helper'

describe 'chef_nginx::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
