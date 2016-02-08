describe "Commafy API", type: :request do

  it "GET /commafy/1234567/3" do
    get '/commafy/1234567/3', {}, { "Accept" => "application/json" }
    expect(response).to be_success
    expect(JSON.parse(response.body)).to eql({"original"=>"1234567", "commafied"=>"1,234,567"})
  end

  it "GET /commafy/12345678/4" do
    get '/commafy/12345678/4', {}, { "Accept" => "application/json" }
    expect(response).to be_success
    expect(JSON.parse(response.body)).to eql({"original"=>"12345678", "commafied" => "1234,5678"})
  end

  it "GET /commafy/123456.789/2" do
    get '/commafy/123456.789/2', {}, { "Accept" => "application/json" }
    expect(response).to be_success
    expect(JSON.parse(response.body)).to eql({"original"=>"123456.789", "commafied" => "12,34,56.789"})
  end

end
