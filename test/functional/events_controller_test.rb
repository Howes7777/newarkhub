require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get redirected when not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should render the new page when logged in" do
    sign_in users(:test1234)
    get :new
    assert_response :success
  end

  test "should be logged in to post status" do
      post :create, status: { content: "Hello" }
      assert_response :redirect
      assert_redirected_to new_user_session_path
  end

  #test "should create event when logged in" do
   # sign_in users(:test1234)
  #    assert_difference('Event.count') do
  #    post :create, event: { EventDescription: @event.EventDescription, cost: @event.cost, enddate: @event.enddate, eventname: @event.eventname, eventtime: @event.eventtime, sessions: @event.sessions, startdate: @event.startdate }
  #  end
  #  assert_redirected_to event_path(assigns(:event))
  #end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end



  test "should destroy event" do
    sign_in users(:test1234)
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end

  test "should get edit when logged in" do
    sign_in users(:test1234)
    get :edit, id: @event
    assert_response :success
  end

  test "should redirect event update when not logged in" do
    put :update, id: @event, event: { EventDescription: @event.EventDescription, cost: @event.cost, enddate: @event.enddate, eventname: @event.eventname, eventtime: @event.eventtime, sessions: @event.sessions, startdate: @event.startdate }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should redirect event destroy when not logged in" do
    put :destroy, id: @event, event: { EventDescription: @event.EventDescription, cost: @event.cost, enddate: @event.enddate, eventname: @event.eventname, eventtime: @event.eventtime, sessions: @event.sessions, startdate: @event.startdate }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end



  #test "should update event when logged in" do
  #  sign_in users(:test1234)
  #  put :update, id: @event, event: { EventDescription: @event.EventDescription, cost: @event.cost, enddate: @event.enddate, eventname: @event.eventname, eventtime: @event.eventtime, sessions: @event.sessions, startdate: @event.startdate }
  #  assert_redirected_to event_path(assigns(:event))
  #end


  #test "should update event" do
  #  put :update, id: @event, event: { EventDescription: @event.EventDescription, cost: @event.cost, enddate: @event.enddate, eventname: @event.eventname, eventtime: @event.eventtime, sessions: @event.sessions, startdate: @event.startdate }
  #  assert_redirected_to event_path(assigns(:event))
  #end

  #test "should get edit" do
  #  get :edit, id: @event
  #  assert_response :success
  #end

end
