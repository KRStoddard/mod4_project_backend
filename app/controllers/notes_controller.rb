class NotesController < ApplicationController

    def index
        notes = Note.all.reverse
        render :json => notes, :include => {:tags => {:only => :name}}
    end

    def show
        note = Note.find(params[:id])
        render json: note 
    end

    def create 
        note = Note.create({"title": params[:title], "content": params[:content], "user_id": params[:user_id]})
        params[:tags].split(', ').each do |tag| 
            tag_id = Tag.find_or_create_by({name: tag}).id
            NoteTag.create({"tag_id": tag_id, "note_id": note.id})
        end
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