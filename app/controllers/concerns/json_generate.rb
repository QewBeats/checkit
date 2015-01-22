class JSONResponse
  def self.create title, msg
    { 
      "title" => title, 
      "message" => msg 
    }
  end
end
