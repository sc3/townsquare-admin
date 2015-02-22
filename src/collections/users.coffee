
exports = @
exports.townsquare_admin = {} if not exports.townsquare_admin?
exports.townsquare_admin.collections = {} if not exports.townsquare_admin.collections?

class Users extends townsquare_admin.collections.TownSquareCollection
    model: townsquare_admin.models.User
    url: 'http://localhost:5000/api/0.1/users/'


exports.townsquare_admin.collections.Users = Users
