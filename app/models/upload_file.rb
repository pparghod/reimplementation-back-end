class UploadFile < Question
  # This method returns what to display if an instructor (etc.) is creating or editing a questionnaire (questionnaires_controller.rb)
  def edit(_count)
    html = '<tr>'
    html += '<td align="center"><a rel="nofollow" data-method="delete" href="/questions/' + id.to_s + '">Remove</a></td>'
    html += '<td><input size="6" value="' + seq.to_s + '" name="question[' + id.to_s + '][seq]" id="question_' + id.to_s + '_seq" type="text"></td>'
    html += '<td><textarea cols="50" rows="1" name="question[' + id.to_s + '][txt]" id="question_' + id.to_s + '_txt" placeholder="Edit question content here">' + txt + '</textarea></td>'
    html += '<td><input size="10" disabled="disabled" value="' + type + '" name="question[' + id.to_s + '][type]" id="question_' + id.to_s + '_type" type="text"></td>'
    html += '<td><!--placeholder (UploadFile does not need weight)--></td>'
    html += '</tr>'

    html.html_safe
  end

  # This method returns what to display if an instructor (etc.) is viewing a questionnaire
  def view_question_text
    html = '<TR><TD align="left"> ' + txt + ' </TD>'
    html += '<TD align="left">' + type + '</TD>'
    html += '<td align="center">' + weight.to_s + '</TD>'
    html += '<TD align="center">&mdash;</TD>'
    html += '</TR>'
    html.html_safe
  end

  # Returns what to display for uploading a file.
  def complete(count, answer = nil)
  end

  # Returns what to display if a student is viewing a filled-out questionnaire.
  def view_completed_question(count, files)
  end
end
