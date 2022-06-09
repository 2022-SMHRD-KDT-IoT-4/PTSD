

function data(style) {


    $.ajax({
        url: 'http://api.visitjeju.net/vsjApi/contents/searchList?apiKey=ryh8s36f86u9k3r5&locale=kr&category=c1&pag', // 요청서버경로 
        type: 'get',  // 요청방식 (get/post)
        
    
        dataType: 'json',
        success: function (res) {
            let style = "<style> #span{ font-size:2px}</style>";

            for (let i = 0; i < 100; i++){
                style += "<div class='img'>",
                style += "<img src='" + res.items[i].repPhoto.photoid.thumbnailpath + "'  alt='tourphoto'></img>",
                style += "<br>"
                style += "<p>",
                style += res.items[i].address,
                style += "<br>",
                style += res.items[i].alltag,
                style += "</p>",
                style += "</div>"

            }

            $('#content').append(style);

        },
        error: function () {
            alert('통신실패!❌') //응답 실패 시 실행 함수 
        }
    })
}