
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.models = {} if not exports.townsquare_admin.models?

class FilterAttributes extends Backbone.Model
    defaults:
        field_name: 'Search'


class TableFilterer
    constructor: (@filter_view, @table_view) ->
        exports.townsquare_admin.events.on('filtering', (event_name) ->
            console.log('Filtering')
        )


exports.townsquare_admin.models.FilterAttributes = FilterAttributes
exports.townsquare_admin.TableFilterer = TableFilterer
