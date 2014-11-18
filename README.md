#DuckEncoder README

Note: I spent a grand total of 10 minutes making this app, and most of that was initialising an empty Rails application. This app is very simple in nature. It does not have or use a database, it doesn't employ any authentication (although devise gem is in the gemfile waiting for your configuration if you so desire). Just want to make sure we're all on the same page here in terms of expectations =)

A Ruby on Rails app designed to be a simple GUI wrapper for the Duck Encoder. 
This is not a replacement for the hak5 encoder, but it can serve as a simple wrapper for the encoder. If you choose to do so, you may serve remotely for an easy way to encode your ducky scripts on a portable device such as your Android phone / tablet.

Tested with DuckEncoder (this app) running on an OSX host, and accessing it from an Android client via web browser. It should work on Linux. Windows paths might not work correctly. When I have another few minutes I might come back and make sure the paths are actually OS agnostic.

##Usage:
### Press the Choose File button to open your file browser 
<img style="cursor: zoom-in;" src="https://raw.githubusercontent.com/tresacton/DuckEncoder/master/ReadmeAssets/Duck1.png" width="291" height="518">
### If using the app on an Android device: select your file browser, navigate to the ducky script you wish to use, and press "Create inject.bin" to encode the script
<img style="cursor: zoom-in;" src="https://raw.githubusercontent.com/tresacton/DuckEncoder/master/ReadmeAssets/Duck2.png" width="291" height="518">
### Check output from the encoder tool and click the download link if you are satisfied with the results
<img style="cursor: zoom-in;" src="https://raw.githubusercontent.com/tresacton/DuckEncoder/master/ReadmeAssets/Duck3.png" width="291" height="518">
##Installation Instructions
Run the following commands from your terminal:
<pre><code>
git clone https://github.com/tresacton/DuckEncoder.git
cd DuckEncoder
bundle install
</code></pre>
Once you have done installed the app, you need to tell it where your Hak5 encoder is located. To do this, edit the file config/config.yml with the correct path.

You can now launch the app
<pre><code>
rails s -p 3000 # or any port you prefer
</code></pre>

Navigate to the app like you would any other web app. For example, if accessing the app locally, type the following into your browser:
http://127.0.0.1:3000

Enjoy.



## If you have found this tool to be useful, please feel free to make a bitcoin donation to: 15ELxpFFeeQXokzXzjJuk6iwr1q7r9cjTz
