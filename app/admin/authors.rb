ActiveAdmin.register Author do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do |t|

    column 'Id', :sortable => :id do |author|
      link_to author.id.to_s, admin_author_path(author)
    end

    column 'Full Name', :sortable => :last_name do |author|
      author.full_name
    end

    column 'Publisher', :sortable => :publisher do |author|
      author.publisher
    end

    column 'Books', :sortable => nil do |author|
      author.books.count
    end
  end

  show do
    panel 'Books' do
      table_for(author.books) do
        column 'Title', :title
        column 'Received On', :created_at
      end
    end
  end
end
