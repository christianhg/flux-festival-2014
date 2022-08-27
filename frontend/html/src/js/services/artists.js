flux.factory('Artists', [
    '$resource',
    function($resource) {
        return $resource('/api/artists/:artist_slug', { artist_slug: "@artist_slug" }, {
            'query': {
                method: 'GET',
                isArray: true
            },
            'find': {
                method: 'GET',
                isArray: true
            }
        });
    }]);