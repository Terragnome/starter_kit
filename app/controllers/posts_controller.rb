class PostsController < ApplicationController
  @@feed_length = 6 # This should be a multiple of 6

  def root
    redirect_to latest_path
  end

  def latest
    prepare_feed()

    respond_to do |format|
      format.html{render action: 'feed'}
      format.js{render action: 'feed'}
    end
  end

  def tag_feed
    @tags ||= params.has_key?(:tags) ? params[:tags].split(",").each{|x| x.to_sym} : :all
    prepare_feed()

    redirect_to latest_path and return if @tags == :all or @tags.count == 0
    redirect_to feed_path(@tags.first) and return if @tags.count <= 1

    respond_to do |format|
      format.html{render action: 'feed'}
      format.js{render action: 'feed'}
    end
  end

  def feed
    @tags ||= params.has_key?(:tag) ? [params[:tag].to_sym] : :all
    prepare_feed()

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    begin
      @post ||= Post.active.includes(:counters, :photos, :tags).where(:slug=>params[:id].downcase()).take()
    rescue
    end
    @post ||= Post.active.includes(:counters, :photos, :tags).where(:id=>params[:id]).take()
    redirect_to latest_path and return if not @post

    meta_title(@post.title)
    meta_keywords(@post.tag_names)
    meta_description(@post.body)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def share
    @post = Post.active.where(:id=>params[:id]).take()

    @share_count = 0
    if @post
      key = params[:key].to_sym()
      if [:facebook, :twitter].include?(key)
        counter = Counter.find_or_create_by(:countable_type=>@post.class.to_s, :countable_id=>@post.id, :key=>key)
        counter.increment()
        counter.save()
        @share_count = counter.counter
      end
    end

    respond_to do |format|
      format.js{ render action: 'share' }
    end
  end

  def convert
    @post = Post.active.where(:id=>params[:id]).take()
    redirect_to @post.url and return
  end

  def search
    query = params[:q]
    @posts = Post.active.basic_search(query)
    @posts += Post.active.includes(:tags).tagged_with(query)
    @tags = []
    prepare_feed()

    meta_title("Guides and Gear about \"#{query}\"")

    respond_to do |format|
      format.html{ render action: 'feed', layout: params[:ajax] != 'true' }
      format.json{ render json: @posts }
    end
  end

private

  def oxford_commas(entries)
    return "" if entries.length == 0
    return entries[0] if entries.length == 1
    return entries.join(" and ") if entries.length == 2
    formatted_entries = entries[0..-2]
    "#{formatted_entries.join(", ")}, and #{formatted_entries[-1]}"
  end

  def meta_title_feed
    if not @tags or @tags == :all
      meta_title(:all)
    elsif @tags.count == 1
      meta_title(@tags.first.capitalize)
    else
      entries = @tags.collect{|x|x.capitalize}
      categories = entries.select{|x|x == :Gear or x == :Guides}.sort!{|a,b| b<=>a}
      entries -= categories

      has_categories = categories.length > 0
      has_entries = entries.length > 0

      title_components = []
      title_components.push( oxford_commas(categories) ) if has_categories
      title_components.push("for") if has_categories and has_entries
      title_components.push(oxford_commas(entries)) if has_entries

      meta_title(title_components.join(" "))
    end
  end

  def prepare_feed
    @tags ||= :all
    @page ||= params.has_key?(:page) ? params[:page].to_i : 1
    @price ||= params.has_key?(:price) ? params[:price].to_i : :all
    scroll ||= params.has_key?(:scroll) ? params[:scroll] : :next
    @all_tags = []

    @selected_tags = []
    if not @posts
      if @tags == :all
        @posts = Post.active.includes(:counters, :photos, :tags).active.paginate(:page=>@page, :per_page=>@@feed_length)
        @posts = @posts.where("cost < #{@price}") if @price != :all
      else
        @tags = @tags.collect{|x| x.to_sym}
        @posts = Post.active.includes(:counters, :photos, :tags).tagged_with(@tags)
        @posts = @posts.where("cost < #{@price}") if @price != :all
        @all_tags = @posts.tag_counts_on(:tags).order('taggings_count DESC')

        tag_counts = {}        
        @posts.each do |post|
          post.tags.each do |tag|
            tag_counts[tag.id] = 0 if not tag_counts.include?(tag.id)
            tag_counts[tag.id] += 1
          end
        end

        @all_tags.each{|tag| tag.taggings_count = tag_counts[tag.id] if tag_counts.include?(tag.id) }
        @all_tags.each{|x| @selected_tags.push(x) if @tags.include?(x.name.to_sym) }
        @posts=@posts.paginate(:page=>@page, :per_page=>@@feed_length)
      end
      @posts.reverse if scroll == :prev
    end

    # Show all tags if there would other be none
    @all_tags=Post.active.tag_counts_on(:tags).order('taggings_count DESC') if @all_tags.length == 0

    meta_title_feed()
  end

end