function getContent(page, content_id)
{
  url = '/admin/' + page.toLowerCase() + '/' + content_id.toLowerCase();
  $.get(url, function populate_editor(resp) {
    page_data = JSON.parse(resp)
    $('#content-title').val(page_data.title);
    $('#content-body').val(page_data.content);
  });
}

