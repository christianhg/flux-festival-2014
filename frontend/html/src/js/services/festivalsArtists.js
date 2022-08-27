flux.factory('FestivalsArtists', [
    '$resource',
    function($resource) {
        return $resource('/api/festivals/:festival_id/artists', 
            { festival_id: "@festival_id" }, {
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