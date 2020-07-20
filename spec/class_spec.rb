# frozen_string_literal: true

require 'todo.rb'

describe Todo do
  describe '#alter' do
    context 'adding one item' do
      it 'adds an item' do
        expect(subject.alter('add test')).to eq "1 test\n"
      end

      it 'adds dishes to list' do
        expect(subject.alter('add dishes')).to eq "1 dishes\n"
      end

      it 'adds laundry to list' do
        expect(subject.alter('add laundry')).to eq "1 laundry\n"
      end
    end

    context 'adding multiple items' do
      it 'should list the test & dishes in numeric order' do
        subject.alter('add test')
        expect(subject.alter('add dishes')).to eq "1 test\n2 dishes\n"
      end

      it 'should list the laundry & cooking in numeric order' do
        subject.alter('add laundry')
        expect(subject.alter('add cooking')).to eq "1 laundry\n2 cooking\n"
      end
    end

    context 'adding two word items' do
      it 'should add two word items like cook dinner' do
        expect(subject.alter('add cook dinner')).to eq "1 cook dinner\n"
      end

      it 'should add two word items like wash car' do
        expect(subject.alter('add wash car')).to eq "1 wash car\n"
      end
    end

    context 'Removing Items' do
      it 'should remove dishes when you enter "done 1"' do
        subject.alter('add dishes')
        expect(subject.alter('done 1')).to eq ''
      end

      it 'should remove wash when you enter "done 2"' do
        subject.alter('add dishes')
        subject.alter('add wash')
        expect(subject.alter('done 2')).to eq "1 dishes\n"
      end

      it 'should remove dishes when you enter "done 2"' do
        subject.alter('add dishes')
        subject.alter('add wash')
        subject.alter('add test')        
        expect(subject.alter('done 2')).to eq "1 dishes\n2 test\n"
      end
    end
  end
end