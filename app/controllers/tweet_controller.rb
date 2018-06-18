class TweetController < ApplicationController
    def index
        @boards = Board.all
        cookies[:user_name] = "움짤"
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
        flash[:success] = "새 글이 등록되었습니다."
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
        flash[:success] = "글이 수정되었습니다."
        redirect_to '/tweet'
    end
        
    def delete
        board = Board.find(params[:id])
        board.destroy
        flash[:error] = "글이 삭제되었습니다."
        redirect_to '/tweet'
    end
    
    
end
