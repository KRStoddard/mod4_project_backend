class NotesController < ApplicationController

    def index
        notes = Note.all.reverse
        render json: notes
    end

    def show
        note = Note.find(params[:id])
        render json: note 
    end

    def create
        user_id = User.all.sample.id 
        note = Note.create({"title": params[:title], "content": params[:content], "user_id": user_id})
    end

    def update
        note = Note.find(params[:id])
        note.update(title: params[:title], content: params[:content])
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
    end

    

end