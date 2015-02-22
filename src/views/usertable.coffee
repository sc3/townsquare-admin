
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.views = {} if not exports.townsquare_admin.views?


class UserTable extends Backbone.View
    render: ->
        @collection.each((u) =>
            user_row = new townsquare_admin.views.UserRow({model: u})
            @$el.append(user_row.render().el)
        )

        @

exports.townsquare_admin.views.UserTable = UserTable
