

User.create(user_name: "Mark", email: "markymark@funkybunch.com", password_digest: "password", about: "empty")
Post.create(title: "test", post_link: "test.com", user_id: 1)
Comment.create(reply: "im testing stuff", post_id: 1, user_id: 1)
