
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.models = {} if not exports.townsquare_admin.models?

class FilterAttributes extends Backbone.Model
    defaults:
        field_name: 'Search'


class TableFilterer
    constructor: (@table) ->
        exports.townsquare_admin.events.on('filtering', @filter)
        exports.townsquare_admin.events.on('filtering-clear', @clear);

    filter: (view) =>
        input = $(view.$el).find('#search-box')
        term = input.val()
        input.val('')

        unwanted = @table.collection.filter((m) ->
            m.get('first_name') != term
        )

        @table.collection.remove(unwanted)
        @table.render()

    clear: (view) =>
        @table.collection.fetch({success: () =>
            @table.render()
        })



exports.townsquare_admin.models.FilterAttributes = FilterAttributes
exports.townsquare_admin.TableFilterer = TableFilterer
