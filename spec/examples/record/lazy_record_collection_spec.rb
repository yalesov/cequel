# -*- encoding : utf-8 -*-
require File.expand_path('../spec_helper', __FILE__)

describe Cequel::Record::LazyRecordCollection do
  context 'handle timestamp attribute correctly (do not split it to array)' do
    model :Event do
      key :timestamp, :timestamp
      column :value, :text
    end

    let(:now) { Time.now.round(3) }
    let(:event) { Event[now] }

    it { expect(event.attributes).to include(timestamp: now) }
  end
end
