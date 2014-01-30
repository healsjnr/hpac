function buildUrl(page, content_id) {
  return '/admin/' + page.toLowerCase() + '/' + content_id.toLowerCase();
}

function getContent(page, content_id)
{
  url = buildUrl(page, content_id);
  $.get(url, function populate_editor(resp) {
    page_data = JSON.parse(resp)
    $('#content-title').val(page_data.title);
    $('#content-body').val(page_data.content);
    $('#content-form').attr('action', url);
  });
}

//function updateContent(page, content_id, title, body) {
//  url = buildUrl(page, content_id);
//  $.post(url, { title: title, :body: body }, function show_result(resp) {
//  });
//}

