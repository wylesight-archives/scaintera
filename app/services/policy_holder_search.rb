class PolicyHolderSearch

  def initialize(attributes)
    if attributes
      attributes.each do |k,v|
        self.instance_variable_set("@#{k}", v)
      end
    end
  end

  def execute(page, per_page)
    query = PolicyHolder.scoped
    query = query.where("names ilike ? OR surname ilike ?", "%#{@name}%", "%#{@name}%") if @name.present?
    query = query.where("names ilike ?", "%#{@names}%") if @names.present?
    query = query.where("surname ilike ?", "%#{@surname}%") if @surname.present?
    query = query.where("postcode ilike ?", "%#{@postcode}%") if @postcode.present?
    query = query.where("dob = ?", "%#{@dob}%") if @dob.present?
    query.paginate(per_page: per_page, page: page)
  end

end