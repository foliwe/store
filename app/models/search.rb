class Search < ActiveRecord::Base
	
    def search_books
    	books = Book.order(:name)
    	books = books.where("name Like ?","%#{keyword}%") if  keyword.present?
    	books = books.where(category_id: category_id) if  category_id.present?
    	books = books.where(age_ids: age_ids) if  age_ids.present?
    	return books
    end

end
