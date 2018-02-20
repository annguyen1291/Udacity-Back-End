import webbrowser 
class Movie:      

    def __init__(self,title,story_line,poster_image,trailer_youtube_url):
        self.title=title
        self.movie_story_line=story_line
        self.poster_image_url=poster_image
        self.trailer_youtube_url=trailer_youtube_url

    def Show_Trailer(self):
        webbrowser.open(self.trailer_youtube_url)