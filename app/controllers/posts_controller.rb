class PostsController < ApplicationController 
  @@feed_length = 1 # This should be a multiple of 6

  # before_filter :prepare_feed, :only=>[:latest, :feed]

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
      @post = Post.active.where(:id=>params[:id]).take()
      @post ||= Post.active.where(:slug=>params[:id]).take()
    rescue
    end

    redirect_to latest_path and return if not @post

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
        counter = Counter.find_or_create_by(:countable_type=>@post.class, :countable_id=>@post.id, :key=>key)
        counter.increment()
        counter.save()
        @share_count = counter.counter
      end
    end

    respond_to do |format|
      format.js{render action: 'share'}
    end
  end

  private

    def prepare_feed
      @tags ||= :all
      @page ||= params.has_key?(:page) ? params[:page].to_i : 1
      @scroll ||= params.has_key?(:scroll) ? params[:scroll] : :next

      @selected_tags = []
      if @tags == :all
        @posts=Post.active.paginate(:page=>@page, :per_page=>@@feed_length)
        @all_tags=Post.tag_counts_on(:tags).order('taggings_count DESC')
      else
        @tags = @tags.collect{|x| x.to_sym}
        @posts=Post.active.tagged_with(@tags)
        @all_tags=@posts.tag_counts_on(:tags).order('taggings_count DESC')
        @posts=@posts.paginate(:page=>@page, :per_page=>@@feed_length)
        @all_tags.each{|x| @selected_tags.push(x) if @tags.include?(x.name.to_sym) }

        @selected_tags.sort_by{|x| x.name}
        @all_tags = @all_tags-@selected_tags
      end

      @posts.reverse if @scroll == :prev
    end

end