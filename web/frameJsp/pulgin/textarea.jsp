<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/css/trumbowyg.min.css">
<script type="text/javascript" src="/js/trumbowyg/trumbowyg.min.js"></script>
<script type="text/javascript" src="/js/trumbowyg/langs/zh_cn.min.js"></script>
<script type="text/javascript" src="/js/trumbowyg/plugins/upload/trumbowyg.upload.min.js"></script>
<script>
    $(document).ready(function () {
        $('.editor').trumbowyg({
            lang: 'zh_cn',
            btnsDef: {
                image: {
                    dropdown: ['insertImage', 'upload'],
                    ico: 'insertImage'
                }
            },
            btns: [
                ['viewHTML'],
                ['formatting'],
                ['bold', 'italic', 'underline', 'strikethrough'],
                //['superscript', 'subscript'],
                ['link'],
                ['image'],
                //'btnGrp-justify',
                'btnGrp-lists',
                ['horizontalRule'],
                ['fullscreen']
            ],
            plugins: {
                // Add imagur parameters to upload plugin
                upload: {
                    serverPath: 'https://api.imgur.com/3/image',
                    fileFieldName: 'image',
                    headers: {
                        'Authorization': 'Client-ID 9e57cb1c4791cea'
                    },
                    urlPropertyName: 'data.link'
                }
            }
        });
    })
</script>