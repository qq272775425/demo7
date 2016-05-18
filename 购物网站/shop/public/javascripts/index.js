$(function(){
    $col = $('#content .col');
    //ajax获取图片数据
    $.get('/products/list', function(data){
        console.log(data);
        for(var i=0; i<data.length; i++){
            var html = '<li>' +
                            '<img src="'+data[i].img_src+'" alt=""/>' +
                            '<p>' +
                                '<span class="title">'+data[i].prod_name+'</span>' +
                                '<span class="price">'+data[i].prod_price+'</span>' +
                            '</p>' +
                        '</li>';
            var minUl = getMinUl();
            minUl.append(html);

        }
    }, 'json');

    function getMinUl(){
        var minUl = $col.eq(0);
        for(var i=1; i<$col.length; i++){
            if($col.eq(i).height() < minUl.height()){
                minUl = $col.eq(i);
            }
        }
        return minUl;
    }
});