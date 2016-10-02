RSpec.describe FizzBuzzPresenter do
  let(:fizz_buzz) { FizzBuzzPresenter.new(page, per_page) }
  let(:page) { 1 }
  let(:per_page) { 100 }

  describe '#current_page' do
    it 'should return the current page' do
      expect(fizz_buzz.current_page).to eq(1)
    end

    it 'should be an Integer' do
      expect(fizz_buzz.current_page).to be_a(Integer)
    end
  end

  describe '#items' do
    context 'contains an OpenStruct with number (Integer), output (String) and favourite (Boolean)' do
      it 'has a number' do
        expect(fizz_buzz.items.first.number).to eq(1)
      end

      it 'has an output' do
        expect(fizz_buzz.items.first.output).to eq("")
      end

      it 'has a favourite' do
        expect(fizz_buzz.items.first.favourite).to eq(false)
      end
    end

    it 'should be an array' do
      expect(fizz_buzz.items).to be_a(Array)
    end
  end

  describe '#max_pages' do
    it 'should be (max_items / per_page)' do
      expect(fizz_buzz.max_pages).to eq(1_000_000_000)
    end
  end

  describe '#max_items' do
    it 'should be 100_000_000_000' do
      expect(fizz_buzz.max_items).to eq(100_000_000_000)
    end
  end

  describe '#previous_page' do
    context 'with a current page of 5' do
      let(:page) { 5 }

      it 'should return the previous page to the current page' do
        expect(fizz_buzz.previous_page).to eq(4)
      end
    end

    context 'with a current page of 1' do
      let(:page) { 1 }

      it 'should not be possible to go below page 1' do
        expect(fizz_buzz.previous_page).to eq(1)
      end
    end
  end

  describe '#next_page' do
    context 'with a current page of 5' do
      let(:page) { 5 }

      it 'should return the next page to the current page' do
        expect(fizz_buzz.next_page).to eq(6)
      end
    end

    context 'with a current page of 1_000_000_000' do
      let(:page) { 1_000_000_000 }

      it 'should not be possible to go above page 1_000_000_000' do
        expect(fizz_buzz.next_page).to eq(1_000_000_000)
      end
    end
  end

  describe '#viewing_first_page?' do
    context 'when viewing the first page' do
      let(:page) { 1 }

      it 'should return true' do
        expect(fizz_buzz.viewing_first_page?).to eq(true)
      end
    end

    context 'when not viewing the first page' do
      let(:page) { 2 }

      it 'should return false' do
        expect(fizz_buzz.viewing_first_page?).to eq(false)
      end
    end
  end

  describe '#viewing_last_page?' do
    context 'when viewing the first page' do
      let(:page) { 1_000_000_000 }

      it 'should return true' do
        expect(fizz_buzz.viewing_last_page?).to eq(true)
      end
    end

    context 'when not viewing the first page' do
      let(:page) { 500 }

      it 'should return false' do
        expect(fizz_buzz.viewing_last_page?).to eq(false)
      end
    end
  end
end
