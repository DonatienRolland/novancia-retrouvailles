// <div className={divClasses} onClick={this.handleClick}>

// = require rails-ujs
//= require_tree .
// [...]

handleClick = () => {
  Rails.ajax({
    url: `/pictures/${this.props.picture.id}/upvote`,
    type: 'POST',
    success: (data) => {
      this.setState({ picture: data })
    }
  });
}
