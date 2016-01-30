assert = chai.assert

beforeEach ->
    view = new AppView(model: new App())

describe "Black Jack View", ->
  it "should create a card collection", ->
    collection = new Deck()
    assert.strictEqual collection.length, 52

describe "hit button"
  it "should have a hit button", ->
    assert.this.$el.('.hit-Button')
    
describe 'stand button'
  it "should have a stand button", ->
    assert.this.$el.('.stand-Button')
