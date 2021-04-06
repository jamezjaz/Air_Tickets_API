class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update destroy]

  # GET /tickets
  def index
    ticket = Ticket.all
    render json: ticket, status: 201
  end

  # GET /tickets/1
  def show
    ticket = Ticket.find(params[:id])
    if ticket
      render json: ticket, status: 201
    else
      render json: ticket.error, status: 400
    end
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  # def edit
  # end

  # POST /tickets
  def create
    ticket = Ticket.new(ticket_params)

    if ticket.save
      render json: ticket, status: 201, notice: 'Ticket was successfully created.'
    else
      render json: ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tickets/1
  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket, notice: 'Ticket was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tickets/1
  def destroy
    ticket_id = Ticket.find(params[:id])
    ticket_id.destroy

    if ticket_id.destroy
      render json: 'Ticket was successfully destroyed!'
    else
      render json: ticket_id.error, status: unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def ticket_params
    params.permit(:airline_name, :username, :city, :date, :user_id, :airline_id)
  end

  # def destroy_params
  #   params.permit(:user_id, :airline_id)
  # end
end
