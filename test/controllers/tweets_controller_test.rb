class TweetsControllerTest < ActionController::TestCase

  test "stubs request using VCR" do

    user = User.create(name: "drewski",
      screen_name: "dr dre",
      uid: "1234",
      oauth_token: ENV["SAMPLE_OAUTH_TOKEN"],
      oauth_token_secret: ENV["SAMPLE_OAUTH_TOKEN_SECRET"])

    session[:user_id] = user.id


    VCR.use_cassette("j3_data") do

      post :create, :text => "this is a tweet from the rails test suite with vcr"
      assert_response 302
      # assert_not_nil assigns(user.twitter_timeline)
      # assert_select "p.TweetTextSize  js-tweet-text tweet-text"

    end

  end


end
