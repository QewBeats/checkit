class JSONResponse
  def self.create(status, title, msg)
    {
      "status" => status,
      "title" => title, 
      "message" => msg 
    }
  end
end
