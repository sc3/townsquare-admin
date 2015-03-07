
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.models = {} if not exports.townsquare_admin.models?

class User extends Backbone.Model
    defaults:
        'username': '-'
        'last_name': '-'
        'first_name': '-'
        'active': false

    name: () => @get('first_name') + ' ' + @get('last_name')


exports.townsquare_admin.models.User = User
