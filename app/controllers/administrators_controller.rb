class AdministratorsController < ApplicationController
  before_action :authenticate_administrator!
end
