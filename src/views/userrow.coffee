
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.views = {} if not exports.townsquare_admin.views?


class UserRow extends Backbone.View
    template: _.template($('#user-row-t').html())
    tagName: 'tr'
    render: ->
        @$el.html(@template(@model.attributes))

        @

exports.townsquare_admin.views.UserRow = UserRow
