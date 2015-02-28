
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.views = {} if not exports.townsquare_admin.views?


class FilterView extends Backbone.View
    template: _.template($('#filter-t').html())
    render: ->
        @$el.html(@template(@model.attributes))

        @

exports.townsquare_admin.views.FilterView = FilterView
