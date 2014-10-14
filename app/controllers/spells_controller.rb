class SpellsController < ApplicationController
  before_action :find_spell, only: [:show, :edit, :update, :destroy]

  def index
    @spells = Spell.all
  end

  def show
  end

  def new
    @spell = Spell.new
  end

  def edit
  end

  def create
      @spell = Spell.new(spell_params)
    if @spell.save
      redirect_to @spell, notice: 'New spell successfully added.'
    else
      render :new
    end
  end

  def update
    if @spell.update_attributes(spell_params)
      redirect_to @spell, notice: 'Spell info sucessfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @spell.destroy
    redirect_to spells_path, notice: "Spell was successfully removed."
  end

    private
    def find_spell
      @spell = Spell.find(params[:id])
    end

    def spell_params
      params.require(:spell).permit(:spell_name, :student_id, :course_id)
    end
end
