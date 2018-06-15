class TweetController < ApplicationController
    def index
        @boards = Board.all
    end
    
    def show
        @board = Board.find(params[:id])
    end
    
    def new
        p request.ip
    end
    
    def create
        board = Board.new
        board.content = params[:content]
        board.ip = request.ip
        board.save
        redirect_to '/tweet'
    end
    
    def edit
        @board = Board.find(params[:id])
    end
    
    def update
        board = Board.find(params[:id])
        board.content=params[:content]
        board.ip = request.ip
        board.save
        redirect_to '/tweet'
    end
        
    
    
    
end
