require 'rails_helper'

describe SalesForceModel do
  let(:dummy_class) do
    class Dummy < ActiveRecord::Base
      include SalesForceModel
    end
    Dummy.reset_column_information
    Dummy
  end

  let(:now) { DateTime.new(2015, 5, 11) }
  before do
    Temping.create :dummies do
      with_columns do |t|
        t.string :editable_name
        t.datetime :createddate
        t.datetime :systemmodstamp
      end
    end

    allow(DateTime).to receive(:now).and_return(now)
  end

  after do
    Temping.teardown
  end

  it 'sets created at in createddate column on create' do
    dummy = dummy_class.create
    expect(dummy.createddate).to eq(now)
  end

  it 'sets modified_at in systemmodstamp column on create' do
    dummy = dummy_class.create
    expect(dummy.systemmodstamp).to eq(now)
  end

  it 'sets modified_at in systemmodstamp column on update' do
    dummy = dummy_class.create
    expect(dummy.systemmodstamp).to eq(now)
    new_now = DateTime.new(2017, 2, 1)
    allow(DateTime).to receive(:now).and_return(new_now)
    dummy.editable_name ='somenewname'
    dummy.save
    expect(dummy.systemmodstamp).to eq(new_now)
  end
end