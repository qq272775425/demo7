;(function($){
    $.fn.extend({
        num: function(options){
            var settings = $.extend({
                min: 1,
                max: 100,
                isEdit: true
            }, options);

            this.addClass('num-value')
                .val(settings.min)
                .wrap('<div class="num-input"/>')
                .before('<span class="num-minus" onselectstart="return false;">-</span> ')
                .after(' <span class="num-add" onselectstart="return false;">+</span>')
                .on('keydown', function(e){
                    if(!(e.which>=48&&e.which<=57 || e.which==8)){
                        return false;
                    }
                }).on('keyup', function(){
                    if(parseInt(this.value) > settings.max){
                        this.value = settings.max;
                    }
                });
            var that = this;
            this.prev('.num-minus').on('click', function(){
                var val = parseInt(that.val());
                val--;
                if(val < settings.min){
                    val = settings.min;
                }
                that.val(val);
                return false;
            });
            this.next('.num-add').on('click', function(){
                var val = parseInt(that.val());
                val++;
                if(val > settings.max){
                    val = settings.max;
                }
                that.val(val);
                return false;
            });


            return this;

        }
    });

})(jQuery);