user1 = User.create({name: 'Jeremy', password: '1234'})
user2 = User.create({name: 'Douglas', password: '1234'})

post1 = Post.create({title: 'New whiskey bar in Williamsburg', user: user1})
post2 = Post.create({title: '50% off full sleeve tats at Mutton Chop Ink, BK', user: user2})
post3 = Post.create({title: 'Vintage bike for sale', user: user1})

comment1 = Comment.create({content: 'just what we needed, another whiskey bar', user: user1, post: post1})
comment2 = Comment.create({content: '8$ well drinks until 12, awesome', user: user1, post: post1})
