flux.factory('Sponsors', [
    '$resource',
    function($resource) {
        return $resource('/api/sponsors/:sponsor_id', { sponsor_id: "@sponsor_id" }, {
            'query': {
                method: 'GET',
                isArray: true
            },
            'find': {
                method: 'GET'
            }
        });
    }]);