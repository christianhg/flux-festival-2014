flux.filter('artistList', function() {
    return function(artists) {
        artistList = "";
        artists.forEach(function(artist) {
        	if(artistList !== "") {
        		artistList = artistList + ", " + artist.name;	
        	} else {
        		artistList = artistList + artist.name;
        	}
        });
        return artistList;
    };
});

flux.filter('niceTime', function() {
    return function(input) {
        var output = input;
        if(input && input.length > 16) {
            output = input.substring(11,16);
        }
        // var output = input;
        return output;
    };
});