$(function () {

    var stateId = $('#container').attr("data-state");


    $.getJSON('/states/' + stateId, function (data) {
        // Create the chart
        $('#container').highcharts('StockChart', {


            rangeSelector : {
                selected : 1
            },

            title : {
                text : 'Preços Habitação'
            },

            series : data
            
        });
    });

});