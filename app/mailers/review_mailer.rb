class ReviewMailer < ApplicationMailer
    default :from => "pikcha@gmail.com"

    def new_review(review)
        @review = review
        mail(:to => "iharprokop@gmail.com", :subject => "у вас новый озыв")
        
    end
end
