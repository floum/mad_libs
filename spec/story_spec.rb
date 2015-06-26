describe Story do
  context 'when "I like to eat ((a vegetable))"' do
    before :each do
      @story = Story.new('I like to eat ((a vegetable))')
    end
    context 'and this vegetable is "potato"' do
      before :each do
        @story['a vegetable'] = 'potato'
      end
      it 'renders as "I like to eat potato"' do
        expect(@story.render).to eq('I like to eat potato')
      end
    end
  end
  context 'when "((a name)) is ((an adjective))"' do
    before :each do
      @story = Story.new('((an adjective)) ((a name))')
    end
    context 'and the name is "Max" and the adjective is "Mad"' do
      before :each do
        @story['an adjective'] = 'Mad'
        @story['a name'] = 'Max'
      end
      it 'renders as "Mad Max"' do
        expect(@story.render).to eq('Mad Max')
      end
    end
  end
end
