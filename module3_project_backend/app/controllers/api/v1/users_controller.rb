class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def update
    @user = User.find_by(id: params[:id])
    @user_pokemon = @user.user_pokemons.find_by(pokemon_id: params[:pokemon_id])
    @user_pokemon.update(user_params(:hp_change, :speed_change, :attack_change, :special_attack_change, :defense_change, :special_defense_change))
  end

  private
  def user_params(*args)
    params.permit(*args)
  end

end
