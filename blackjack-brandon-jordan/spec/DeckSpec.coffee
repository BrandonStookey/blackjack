expect = chai.expect

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should invoke hit', ->
      expect(hand.hit).to.be.ok

  describe 'hit', ->
    it 'should be a function', ->
      expect(hand.hit).to.be.function

  describe 'bet', ->
    it 'should invoke bet function', ->
      expect(hand.bet).to.be.ok

  describe 'bet', ->
    it 'should be a function', ->
      expect(hand.bet).to.be.function

  describe 'stand', ->
    it 'should compare scores', ->
      expect(hand.scoreChecker).to.be.ok

  describe 'stand', ->
    it 'should compare scores', ->
      expect(hand.scoreChecker).to.be.function
