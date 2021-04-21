ArticleCategory.create!([
  {article_id: 27, category_id: 1},
  {article_id: 28, category_id: 4},
  {article_id: 29, category_id: 3},
  {article_id: 30, category_id: 2},
  {article_id: 31, category_id: 1},
  {article_id: 32, category_id: 4}
])
Article.create!([
  {title: "Article 2", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n", author_id: 1},
  {title: "Article 3", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n", author_id: 1},
  {title: "Article 4", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n", author_id: 1},
  {title: "Article 5", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n", author_id: 1},
  {title: "News of the Caribbean", text: "It has always been the most anticipated luxury yacht of our modern times. Spanning 200m. It is a large vessel ", author_id: 1},
  {title: "Why do we use it?", text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n", author_id: 1}
])
Category.create!([
  {name: "Entertainment", priority: nil},
  {name: "Sports", priority: nil},
  {name: "Magazine", priority: nil},
  {name: "TV", priority: nil}
])
Vote.create!([
  {user_id: 1, article_id: 27},
  {user_id: 3, article_id: 32},
  {user_id: 1, article_id: 32}
])
Bookmark.create!([
  {user_id: 3, article_id: 27},
  {user_id: 2, article_id: 32},
  {user_id: 1, article_id: 32}
])
User.create!([
  {name: "Chrys"},
  {name: "Afam"},
  {name: "Mary"}
])
ActiveStorage::Blob.create!([
  {key: "fsin5m4j5m71xpvldlunrbdqewhg", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>5100, "height"=>2460, "analyzed"=>true}, service_name: "local", byte_size: 3593609, checksum: "7m3DaK95CatdNsQQ/bV5CQ=="},
  {key: "zpmu01y77xj196l5t3cab078im07", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>145, "analyzed"=>true}, service_name: "local", byte_size: 13353, checksum: "hHZqSIyLJcAWMbL2yxSxpA=="},
  {key: "selim6jv5l4d5kx9ttqfldib5cev", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>1000, "height"=>482, "analyzed"=>true}, service_name: "local", byte_size: 87803, checksum: "aBJ87qEohH8xKjsayZ+jbw=="},
  {key: "y6di8z3j6ld20h82k35ee0d86q9k", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>4032, "height"=>3024, "analyzed"=>true}, service_name: "local", byte_size: 2893398, checksum: "zqpi/EIHNIq835NvYN4Ojg=="},
  {key: "d34i9jzzzrwf6ii0fnrbkuf81tc8", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>223, "analyzed"=>true}, service_name: "local", byte_size: 17500, checksum: "gaF1Z2n7tNooHXiV3qPAnQ=="},
  {key: "ndydet5n2msh20qz7nxc71dqy1tg", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>241, "analyzed"=>true}, service_name: "local", byte_size: 27931, checksum: "dJDNCTJuX29kof0JXMrfSQ=="},
  {key: "1w7iea5wpk19kggaggcu57lfni02", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>375, "analyzed"=>true}, service_name: "local", byte_size: 42199, checksum: "UNWdBng4UF8ZhGnBHvnEgQ=="},
  {key: "7nty8u7anqa70nnrcp73j9av7wwv", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>3863, "height"=>2964, "analyzed"=>true}, service_name: "local", byte_size: 1830966, checksum: "lxpR8i1Mg/n8KIK4VIf2yg=="},
  {key: "c7fpip2t3ydpq10dglrhnr06c1yk", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>228, "analyzed"=>true}, service_name: "local", byte_size: 11771, checksum: "l2b+XTdQ55ypl8SrjlXIDA=="},
  {key: "t2hgfqm85otcpnt355z3lf00jba5", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>4358, "height"=>2053, "analyzed"=>true}, service_name: "local", byte_size: 1639303, checksum: "kazThGBmF/M+ryHqZINV+w=="},
  {key: "gx2tc35h2isnalx0wyl7sa1m5m4i", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 13814, checksum: "tyrVATSPNmo4xoh1EKg69w=="},
  {key: "xzgks5mg6xqso5cupkl6x0w52pg3", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>141, "analyzed"=>true}, service_name: "local", byte_size: 13907, checksum: "cRLWv4nJ2eH68LpIy8uX0Q=="},
  {key: "ldrb67zak5fp3egjfx2eix937z58", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>230, "analyzed"=>true}, service_name: "local", byte_size: 11846, checksum: "sA3oOlDEQMu6j/bStqIdqA=="},
  {key: "qft4sbl047pokgun8r25ud0z02qm", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>225, "analyzed"=>true}, service_name: "local", byte_size: 17854, checksum: "G5J02iPoAVbITsgAmyAcDA=="},
  {key: "9zq7pzo1kv65qem3bmx5pgdo8f85", filename: "pexels-julius-silver-753331.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>2050, "height"=>1381, "analyzed"=>true}, service_name: "local", byte_size: 885686, checksum: "ux6E7tBy+rSTf7R8d1DIEQ=="},
  {key: "1nzsdyoi6m6zkghg948wgnplm8sv", filename: "pexels-julius-silver-753331.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 21885, checksum: "/rnQnl7zzhlbOEiRrQEH+A=="},
  {key: "ayniodriv9a5mlkl6giool3mzdfn", filename: "pexels-julius-silver-753331.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>337, "analyzed"=>true}, service_name: "local", byte_size: 50329, checksum: "KDRUZgC5wTsjV4TZ2fWQww=="},
  {key: "pev6cojnah75lf4imujude2y6so6", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>236, "analyzed"=>true}, service_name: "local", byte_size: 29379, checksum: "UWVCh5e9O8DpMWtvdk/tdw=="},
  {key: "d69fnbnmsj2dblezj1jmosrwf10x", filename: "pexels-calebe-miranda-793166.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>384, "analyzed"=>true}, service_name: "local", byte_size: 23920, checksum: "BYa57DgO9/kbOc/IaYyUgA=="},
  {key: "aa1zsb3jwlmiswg48ugkjmx0583y", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>241, "analyzed"=>true}, service_name: "local", byte_size: 27931, checksum: "dJDNCTJuX29kof0JXMrfSQ=="},
  {key: "ldslhmh7sfsvcnpqrz1leh3yniss", filename: "pexels-cristina-şopandă-756237.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>375, "analyzed"=>true}, service_name: "local", byte_size: 42199, checksum: "UNWdBng4UF8ZhGnBHvnEgQ=="},
  {key: "a3c7ye287ghx4n3ad0vvappkcus3", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>6016, "height"=>4000, "analyzed"=>true}, service_name: "local", byte_size: 3474173, checksum: "57gxfp6FFG/eFl3re0wccQ=="},
  {key: "s8o8g4aau0jmmmtgwx5v4az780iw", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>197, "analyzed"=>true}, service_name: "local", byte_size: 13577, checksum: "5tC5SmN8c8DlWCRhYiy08A=="},
  {key: "yknjfi9iylfrgtqefdpqfvokv19u", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>500, "height"=>332, "analyzed"=>true}, service_name: "local", byte_size: 29100, checksum: "aBKGBZvrjDrPqHINk1f0jQ=="},
  {key: "6vfwv6u0nk197ftcpxmzku2yg3so", filename: "pexels-julius-silver-753331.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>202, "analyzed"=>true}, service_name: "local", byte_size: 22350, checksum: "CSJq9cpq7bzDOMPEQMqHfg=="},
  {key: "rhtjy5l3h9l2y2kxdlzvubrni8by", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>300, "height"=>199, "analyzed"=>true}, service_name: "local", byte_size: 13579, checksum: "GG8UqIWnj0lex1Vn/vnxsw=="},
  {key: "fyo6nccb06foft2uf24g44rgfymb", filename: "pexels-szelei-robert-1482193.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>902, "height"=>600, "analyzed"=>true}, service_name: "local", byte_size: 78829, checksum: "rjWHJHJk2Na22IJgQe3rww=="},
  {key: "9dmsn4pyuqadw0xc0afhjjse8qnl", filename: "pexels-robert-stokoe-714666.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>297, "height"=>143, "analyzed"=>true}, service_name: "local", byte_size: 12961, checksum: "GvRkxrsa5eiAW32RoGiC3A=="},
  {key: "utzq5e17lwx02eq3p2r337iq3x0v", filename: "pexels-pixabay-144249.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>1000, "height"=>471, "analyzed"=>true}, service_name: "local", byte_size: 89351, checksum: "I+huetQHi1kNDFXr50FT5g=="}
])
ActiveStorage::VariantRecord.create!([
  {blob_id: 92, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 92, variation_digest: "fO2apR6l7KPpY/1qOxm8klDE0nM="},
  {blob_id: 95, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 92, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 95, variation_digest: "o6FvqsFkA8vhEYgai/NTHqoEOlQ="},
  {blob_id: 99, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 101, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 101, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 99, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 95, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 106, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 106, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 99, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 101, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 95, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 92, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 113, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 113, variation_digest: "ANXdmaHuGmipyUQkVofCN38GrOA="},
  {blob_id: 106, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 113, variation_digest: "LtoSAYL4ZrQTjS8XJDwiSZvW12s="},
  {blob_id: 113, variation_digest: "fO2apR6l7KPpY/1qOxm8klDE0nM="},
  {blob_id: 92, variation_digest: "dmoypvAAQQdQHM4w65xT7uktIHo="},
  {blob_id: 101, variation_digest: "fO2apR6l7KPpY/1qOxm8klDE0nM="}
])
ActiveStorage::Attachment.create!([
  {name: "image", record_type: "Article", record_id: 27, blob_id: 92},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 76, blob_id: 93},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 78, blob_id: 94},
  {name: "image", record_type: "Article", record_id: 28, blob_id: 95},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 79, blob_id: 96},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 80, blob_id: 97},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 81, blob_id: 98},
  {name: "image", record_type: "Article", record_id: 29, blob_id: 99},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 82, blob_id: 100},
  {name: "image", record_type: "Article", record_id: 30, blob_id: 101},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 83, blob_id: 102},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 84, blob_id: 103},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 85, blob_id: 104},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 86, blob_id: 105},
  {name: "image", record_type: "Article", record_id: 31, blob_id: 106},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 88, blob_id: 107},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 89, blob_id: 108},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 90, blob_id: 109},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 91, blob_id: 110},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 92, blob_id: 111},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 93, blob_id: 112},
  {name: "image", record_type: "Article", record_id: 32, blob_id: 113},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 94, blob_id: 114},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 95, blob_id: 115},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 96, blob_id: 116},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 97, blob_id: 117},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 98, blob_id: 118},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 99, blob_id: 119},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 100, blob_id: 120}
])
