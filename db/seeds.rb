Article.create!([
  {title: "Mary's thought", text: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", author_id: 3, category_id: 3},
  {title: "Another article from mary", text: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", author_id: 3, category_id: 4},
  {title: "1914 translation by H. Rackham", text: "\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"", author_id: 3, category_id: 3},
  {title: "why we do this?", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", author_id: 1, category_id: 2},
  {title: " de Finibus Bonorum et Malorum", text: "\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"", author_id: 1, category_id: 3},
  {title: "1914 translation by H. Rackham", text: "\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"", author_id: 1, category_id: 1}
])
Category.create!([
  {name: "Entertainment", priority: nil},
  {name: "Sports", priority: nil},
  {name: "Magazine", priority: nil},
  {name: "TV", priority: nil}
])
Vote.create!([
  {user_id: 1, article_id: 39},
  {user_id: 3, article_id: 38}
])
Bookmark.create!([
  {user_id: 3, article_id: 39}
])
User.create!([
  {name: "Chrys"},
  {name: "Afam"},
  {name: "Mary"}
])
ActiveStorage::Blob.create!([
  {key: "042tsgtv71uhfdktxtnjf0gqkac2", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>225, "analyzed"=>true}, service_name: "local", byte_size: 17854, checksum: "G5J02iPoAVbITsgAmyAcDA=="},
  {key: "owaprb1b7tyoz3o7ie7qthw2r83m", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>4358, "height"=>2053, "analyzed"=>true}, service_name: "local", byte_size: 1639303, checksum: "kazThGBmF/M+ryHqZINV+w=="},
  {key: "1kf8euroc6tyinzfz1vam63n1717", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>6016, "height"=>4000, "analyzed"=>true}, service_name: "local", byte_size: 3474173, checksum: "57gxfp6FFG/eFl3re0wccQ=="},
  {key: "qmehpls0wdocrjm11c54pqsnlcjt", filename: "pexels-lukas-296242.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>6144, "height"=>4069, "analyzed"=>true}, service_name: "local", byte_size: 2388410, checksum: "wQZKrJNuyXXF7fmrTHfn9A=="},
  {key: "czpbimmnyn6c8b0r8d15gdfx3zzz", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>3863, "height"=>2964, "analyzed"=>true}, service_name: "local", byte_size: 1830966, checksum: "lxpR8i1Mg/n8KIK4VIf2yg=="},
  {key: "5jgu30mrpyiw9y9onhcdxwiun238", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>141, "analyzed"=>true}, service_name: "local", byte_size: 13907, checksum: "cRLWv4nJ2eH68LpIy8uX0Q=="},
  {key: "uvuocwspdb0pcgi7la1o2b5g32nw", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>230, "analyzed"=>true}, service_name: "local", byte_size: 11846, checksum: "sA3oOlDEQMu6j/bStqIdqA=="},
  {key: "6757fv3n4d2i33rpmj3kwo7avt7b", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>199, "analyzed"=>true}, service_name: "local", byte_size: 13579, checksum: "GG8UqIWnj0lex1Vn/vnxsw=="},
  {key: "yowq4ywuxdkzr5learql3348r6ax", filename: "pexels-lukas-296242.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>199, "analyzed"=>true}, service_name: "local", byte_size: 16348, checksum: "iFapdg8GRrAOcYCzSLxuIQ=="},
  {key: "04vk8w9ty0w59ai8bp3zgc71w8l8", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>451, "height"=>300, "analyzed"=>true}, service_name: "local", byte_size: 24774, checksum: "9jkQvR++YbKrhTI2xVzhnQ=="},
  {key: "7pdu0xltr75g7z9oykxx0zpj0k2l", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>600, "height"=>283, "analyzed"=>true}, service_name: "local", byte_size: 39020, checksum: "JlT3N86VnpUq5+PvsH/nwQ=="},
  {key: "3lp0si7z9yrr3f0ny5p2s2wvkl09", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>521, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 25447, checksum: "unKe2FWvXmddcTdmDLiAvA=="},
  {key: "ijvkh2aazgoqosqrtk9v6ss6d6zz", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>236, "analyzed"=>true}, service_name: "local", byte_size: 29379, checksum: "UWVCh5e9O8DpMWtvdk/tdw=="},
  {key: "ksf2ciz6wtn3m30es14ijl5sfy1q", filename: "pexels-lukas-296242.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>600, "height"=>397, "analyzed"=>true}, service_name: "local", byte_size: 41037, checksum: "/fEi/nU3JAo2JmMsAuhx9A=="},
  {key: "5uyysvju5epd5mta4hffmhjpktxa", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>4032, "height"=>3024, "analyzed"=>true}, service_name: "local", byte_size: 2893398, checksum: "zqpi/EIHNIq835NvYN4Ojg=="},
  {key: "dbgnlqw867zau34m06qtcnfnnh1t", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>533, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 47265, checksum: "JGajMi27rQzl7UCGvZ61FA=="},
  {key: "rqxga7r00r2goipgtrq80ysqqmc9", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>375, "analyzed"=>true}, service_name: "local", byte_size: 42199, checksum: "UNWdBng4UF8ZhGnBHvnEgQ=="},
  {key: "3jdvqk45l4hvygo96y0p5buhlb7v", filename: "pexels-lukas-296242.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>331, "analyzed"=>true}, service_name: "local", byte_size: 32411, checksum: "gGyZ78rF4Zzz7Su+gTCHtA=="},
  {key: "l73n823h63uh0xpdla8cart3c0ev", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>332, "analyzed"=>true}, service_name: "local", byte_size: 29100, checksum: "aBKGBZvrjDrPqHINk1f0jQ=="},
  {key: "9e4ze1w04ch0vxa7i2hpp0abzu4u", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>384, "analyzed"=>true}, service_name: "local", byte_size: 23920, checksum: "BYa57DgO9/kbOc/IaYyUgA=="},
  {key: "huwytf8dp4izyurlkimsdiriiejw", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>3863, "height"=>2964, "analyzed"=>true}, service_name: "local", byte_size: 1830966, checksum: "lxpR8i1Mg/n8KIK4VIf2yg=="}
])
ActiveStorage::VariantRecord.create!([
  {blob_id: 126, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 129, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 127, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 128, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 127, variation_digest: "B4eaLvBqhJ7OzRXRx9KlwgB48lI="},
  {blob_id: 126, variation_digest: "PvAN6a2D5NSeMlV5vJSKW8TVURA="},
  {blob_id: 129, variation_digest: "PvAN6a2D5NSeMlV5vJSKW8TVURA="},
  {blob_id: 128, variation_digest: "PvAN6a2D5NSeMlV5vJSKW8TVURA="},
  {blob_id: 138, variation_digest: "PvAN6a2D5NSeMlV5vJSKW8TVURA="},
  {blob_id: 138, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 126, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 138, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 128, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 127, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 129, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="}
])
ActiveStorage::Attachment.create!([
  {name: "image", record_type: "Article", record_id: 38, blob_id: 126},
  {name: "image", record_type: "Article", record_id: 39, blob_id: 127},
  {name: "image", record_type: "Article", record_id: 40, blob_id: 128},
  {name: "image", record_type: "Article", record_id: 41, blob_id: 129},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 101, blob_id: 130},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 102, blob_id: 131},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 103, blob_id: 132},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 104, blob_id: 133},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 105, blob_id: 134},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 106, blob_id: 135},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 107, blob_id: 136},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 108, blob_id: 137},
  {name: "image", record_type: "Article", record_id: 42, blob_id: 138},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 109, blob_id: 139},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 110, blob_id: 140},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 111, blob_id: 141},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 112, blob_id: 142},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 113, blob_id: 143},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 114, blob_id: 144},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 115, blob_id: 145},
  {name: "image", record_type: "Article", record_id: 43, blob_id: 146}
])
