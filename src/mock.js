const Mock = require('mockjs');

Mock.mock('/home',{
    'shop|10-20':[{
        'id|+1': 1,
        'title': "@ctitle(3,10)",
        'sales|0-1000': 99,
        'distance|1-10.1': 1,
        'time|25-60': 25,
        'send|15-20': 20,
        'price|3-6': 3,
        'isMtSend|0-1': 0,
        'img': "@image('833x625',@color)"
    }]
});

Mock.mock('/home/location',{
    'cityId_A|20-30':[{
        'id|+1': 1,
        'name': "@city()"
    }],
    'cityId_B|20-30': [{
        'id|+1': 1,
        'name': "@city()"
    }]
    
});