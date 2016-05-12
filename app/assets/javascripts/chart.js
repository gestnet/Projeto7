$(function () {

    var stateId = $('#container').attr("data-state");


    $.getJSON('http://localhost:3000/states/' + stateId, function (data) {
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