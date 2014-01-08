# for more details see: http://emberjs.com/guides/models/defining-models/

class Burnt.Location extends DS.Model
  name: DS.attr 'string'
  postal: DS.attr 'string'
  utilityIdentifier: DS.attr 'string'
  userId: DS.attr 'number'
