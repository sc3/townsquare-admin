
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.collections = {} if not exports.townsquare_admin.collections?

class TownSquareCollection extends Backbone.Collection
    parse: (response) ->
        response.objects


exports.townsquare_admin.collections.TownSquareCollection = TownSquareCollection
