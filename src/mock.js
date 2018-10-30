const Mock = require('mockjs');

Mock.mock('http://localhost:5050/home',{
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
Mock.mock('http://localhost:5050/home/grid',{
    'menuList|8':[{
        'id|+1': 1,
        'title': "@ctitle(2,4)",
        'img_url': "@image('88x88',@color)"
    }]
});
Mock.mock('http://localhost:5050/home/location',{
    'cityId_A|20-30':[{
        'id|+1': 1,
        'name': "@city()",
        'cId': "A"
    }],
    'cityId_B|20-30': [{
        'id|+1': 1,
        'name': "@city()",
        'cId': "B"
    }],
    'cityId_C|20-30': [{
        'id|+1': 1,
        'name': "@city()",
        'cId': "C"
    }],
    'cityId_D|20-30': [{
        'id|+1': 1,
        'name': "@city()",
        'cId': "D"
    }]
    
});
Mock.mock('http://localhost:5050/details',{
    'menus|20-25': [{
        'id|+1': 1,
        'title': "@ctitle(2,4)"
    }]
});
