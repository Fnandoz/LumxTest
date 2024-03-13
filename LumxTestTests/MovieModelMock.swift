//
//  MovieModelMock.swift
//  LumxTestTests
//
//  Created by Fernando on 12/03/24.
//

import Foundation

struct MovieModelMock {
    let singleMovie = """
    {
        "adult": false,
        "backdrop_path": "/mDeUmPe4MF35WWlAqj4QFX5UauJ.jpg",
        "belongs_to_collection": null,
        "budget": 0,
        "genres": [
            {
                "id": 28,
                "name": "Action"
            },
            {
                "id": 27,
                "name": "Horror"
            },
            {
                "id": 53,
                "name": "Thriller"
            }
        ],
        "homepage": "",
        "id": 1096197,
        "imdb_id": "tt16253418",
        "original_language": "pt",
        "original_title": "No Way Up",
        "overview": "Characters from different backgrounds are thrown together when the plane they're travelling on crashes into the Pacific Ocean. A nightmare fight for survival ensues with the air supply running out and dangers creeping in from all sides.",
        "popularity": 1762.83,
        "poster_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "production_companies": [
            {
                "id": 19638,
                "logo_path": "/6R3XtbihMWuDRFnlm4MkpxhmEKf.png",
                "name": "Altitude Film Entertainment",
                "origin_country": "GB"
            },
            {
                "id": 290,
                "logo_path": "/jrgCuaQsY9ouP5ILZf4Dq4ZOkIX.png",
                "name": "Ingenious Media",
                "origin_country": "GB"
            },
            {
                "id": 177401,
                "logo_path": "/qGH1GhknZ1P8xv84tDILE8D2Cev.png",
                "name": "Hyprr Films",
                "origin_country": "GB"
            },
            {
                "id": 215092,
                "logo_path": null,
                "name": "Sarma Films",
                "origin_country": "GB"
            },
            {
                "id": 218231,
                "logo_path": "/qI1nnORhDrF2V18KdjitkIOdgN.png",
                "name": "Dimension Studio",
                "origin_country": "GB"
            }
        ],
        "production_countries": [
            {
                "iso_3166_1": "GB",
                "name": "United Kingdom"
            }
        ],
        "release_date": "2024-01-18",
        "revenue": 0,
        "runtime": 90,
        "spoken_languages": [
            {
                "english_name": "English",
                "iso_639_1": "en",
                "name": "English"
            }
        ],
        "status": "Released",
        "tagline": "Brace yourself.",
        "title": "No Way Up",
        "video": false,
        "vote_average": 5.988,
        "vote_count": 200
    }
    """.data(using: .utf8)!
}
