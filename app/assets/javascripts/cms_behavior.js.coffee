$ ->


  $("select").each ->
    $(this).select2
      allowClear: true
      width: "220px"

  $("#page_body").redactor
    css: "/assets/wysiwyg.css"
