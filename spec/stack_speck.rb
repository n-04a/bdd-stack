# coding: utf-8
require 'spec_helper'

describe Stack do
  let(:stack) { Stack.new }
  describe "#push" do
    subject { stack.push 1 }
    it { expect(subject).to eq stack }
  end

  describe "#pop" do
    subject { stack.pop 1 }
    it { expect(subject).to eq stack }
  end 

  describe "#length" do
    subject { stack.length }
    context "1 を push 済みの stack" do
      before { stack.push 1 }
      it { expect(subject).to eq 1 }
    end
    
    context "1と5をpush済みのstack" do
      before do
        stack.push 1
        stack.push 5
      end
      subject { stack.length }
      it { expect(subject).to eq 2 }
    end
  end
end
