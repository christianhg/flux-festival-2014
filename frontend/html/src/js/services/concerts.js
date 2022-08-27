flux.factory('Concerts', [
    '$resource',
    function($resource) {
        return $resource('/api/concerts/:concert_id', { concert_id: "@concert_id" }, {
            'query': {
                method: 'GET',
                isArray: true
            },
            'find': {
                method: 'GET'
            }
        });
    }]);