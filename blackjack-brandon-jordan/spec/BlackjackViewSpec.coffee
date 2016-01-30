assert = chai.assert

describe "Black Jack View", ->
  beforeEach ->
    view = new AppView(model: new App())

  it "should create a card collection", ->
    collection = new Deck()
    assert.strictEqual collection.length, 52

  it "should have a hit button", ->
    assert.this.$el.('.hit-Button')

  it "should have a stand button", ->
    assert.this.$el.('.stand-Button')
