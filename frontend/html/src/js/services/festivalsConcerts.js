flux.factory('FestivalsConcerts', [
    '$resource',
    function($resource) {
        return $resource('/api/festivals/:festival_id/concerts', 
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