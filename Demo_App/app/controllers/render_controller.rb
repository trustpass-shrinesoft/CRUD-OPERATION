class RenderController < ApplicationController

    def hello
        @Name='Hello'
        render('hello1')
    end

    def hello1
        @Name='hello1'
        render('hello')
    end

    def goodbye
        @Name='GoodBye'
        render('hello')
    end

    def redirect_fun
        @Name='redirect_fun'
        redirect_to(:controller=>'render',:action=>'hello1')
    end

    def youtube
        redirect_to('https://youtube.com')
    end
end
