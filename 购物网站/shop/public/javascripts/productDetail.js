$(function(){
    var $bigImg = $('#product-imgs .big-img img');
    $('#product-imgs li').on('click', function(){
        $(this).addClass('selected').siblings().removeClass('selected');
        $bigImg.attr('src', $(this).children()[0].src);
    });

    var $productPrice = $('.product-price'),
        $productSize = $('#product-size');
    $('#product-form .product-size-list li').on('click', function(){
        $productPrice.html($(this).data('price'));
        $productSize.val($(this).html());
        $(this).addClass('selected').siblings().removeClass('selected');
    });

    $('#product-num').num({
        max: 6,
        isEdit: false
    });

    $('#product-form').on('submit', function(){
        var that = this;
        $.get('/users/checkLogin', function(data){
            if(data == 'fail'){
                alert('您未登录');
            }else{
                //bSubmit = true;
                that.submit();
            }
        });
        return false;
    });
});