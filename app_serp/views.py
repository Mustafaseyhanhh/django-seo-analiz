from app.views import *
from . import models

#Site eklemek için yazılan fonksiyon
def addSite(request):
    print(request.POST.keys())
    data =  {
            "data": 
            {
                "uid":None,
                "site_url":None,
                "rank_time":None
            },
            "code":1,
            "code_":"OK"
            }
    uid = request.POST.get('uid', None)
    site_url = request.POST.get('site_url', None)
    key = request.POST.get('key', None)
    rank_time = request.POST.get('rank_time', None)
    if uid and site_url and key and rank_time:
        if checkKey(key):    
            if pingg(site_url):
                if models.Site.objects.filter(site_url=site_url,uid=uid):
                    data["code_"] = "Site bu kullanıcı tarafından daha önce eklenmiş."
                else:
                    new = models.Site(
                        uid = uid,
                        site_url = site_url,
                        rank_time =rank_time,
                    ).save()
                    data["data"]["uid"] = uid
                    data["data"]["site_url"] = site_url
                    data["data"]["rank_time"] = rank_time
                    data["code"]=0
            else:
                data["code_"] = "Eklemek istenen site aktif değil."
        else:
            data["code_"] = "Key Error"
    else:
        data["code_"] = "Eksik parametre"
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')

#site silmek için kullanılan fonksiyon
def deleteSite(request):
    data =  {
            "data": 
            {
                "uid":None,
                "site_url":None
            },
            "code":1,
            "code_":"OK",
    }
    uid = request.POST.get('uid', None)
    site_url = request.POST.get('site_url', None)
    key = request.POST.get('key', None)
    if uid and site_url and key:
        if checkKey(key):
            site = models.Site.objects.filter(site_url=site_url,uid=uid)
            if site:
                site.first().delete()
                data["data"]["uid"] = uid
                data["data"]["site_url"] = site_url
                data["code"]=0
            else:
                data["code_"]="Silinmek istenen site kayıtlı değil."
        else:
            data["code_"] = "Key Error"
    else:
        data["code_"] = "Eksik parametre"
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')

#site takip süresini uzatmak yada kısaltmak için kullanılacak fonksiyon.
def updateRankTime(request):
    data =  {
            "data": 
            {
                "uid":None,
                "site_url":None,
                "rank_time":None
            },
            "code":1,
            "code_":"OK"
            }
    uid = request.POST.get('uid', None)
    site_url = request.POST.get('site_url', None)
    key = request.POST.get('key', None)
    rank_time = request.POST.get('rank_time', None)
    if uid and site_url and key and rank_time:
        if checkKey(key):
            site = models.Site.objects.filter(site_url=site_url,uid=uid) 
            if site:
                site = site.first()
                site.rank_time=rank_time
                site.save()
                data["data"]["uid"] = uid
                data["data"]["site_url"] = site_url
                data["data"]["rank_time"] = rank_time
                data["code"]=0
            else:
                data["code_"] = "Güncellemek istediğiniz site kayıtlarda bulunamadı."
        else:
            data["code_"] = "Key Error"
    else:
        data["code_"] = "Eksik parametre"
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')


def informationSite(request):
    uid = request.GET.get('uid', None)
    site_url = request.GET.get('site_url', None)
    new = models.Site(
            uid = uid,
                site_url = site_url,
    ).save()
    data = {
        'code':0,
        'code_':'OK',
    }
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')

def addKeyword(request):
    data =  {
            "data": 
            {
                "uid":None,
                "site_url":None,
                "keyword":None,
                "l_lang":None,
                "l_name":None,
                "l_x":None,
                "l_y":None,
                "platform":None,
            },
            "code":1,
            "code_":"OK"
            }
    uid = request.POST.get('uid', None)
    site_url = request.POST.get('site_url', None)
    key = request.POST.get('key', None)
    keyword = request.POST.get('keyword', None)
    l_lang = request.POST.get('l_lang', None)
    l_name = request.POST.get('l_name', None)
    l_x = request.POST.get('l_x', None)
    l_y = request.POST.get('l_y', None)
    platform_id = request.POST.get('platform_id', None)
    if uid and site_url and key and keyword and l_lang and l_name and l_x and l_y and platform_id:
        if checkKey(key):
            site = models.Site.objects.filter(site_url=site_url,uid=uid)
            platform=models.Platform.objects.filter(id=int(platform_id))
            if site and platform:
                if models.Keyword.objects.filter(keyword=keyword,site=models.Site.objects.filter(site_url=site_url,uid=uid).first()):
                    data["code_"] = "Keyword bu site için bu kullanıcı tarafından daha önce eklenmiş."
                else:
                    site = site.first()
                    platform = platform.first()
                    new = models.Keyword(
                        site = site,
                        keyword = keyword,
                        language = l_lang,
                        location_name = l_name,
                        location_x = l_x,
                        location_y = l_y,
                        platform = platform,
                    ).save()
                    data["data"]["uid"] = uid
                    data["data"]["site_url"] = site_url
                    data["data"]["keyword"] = keyword
                    data["data"]["l_lang"] = l_lang
                    data["data"]["l_name"] = l_name
                    data["data"]["l_x"] = l_x
                    data["data"]["l_y"] = l_y
                    data["data"]["platform"] = platform.name
                    data["code"]=0
            else:
                data["code_"] = "Keyword eklemek istediğiniz site mevcut değil yada platform id yanlış"
        else:
            data["code_"] = "Key Error"
    else:
        data["code_"] = "Eksik parametre"
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')

def addKeywordSetting(request):
    data =  {
            "data": 
            {
                "search_engine":[],
                "platform":[],
                "languages":[],
                "locations":{
                    "location_city":[],
                    "location_country":[],
                    "location_private":[],
                },
            },
            "code":1,
            "code_":"OK"
            }
    key = request.POST.get('key', None)
    if key:
        if checkKey(key):
            search_engine = models.SearchEngine.objects.all()
            platform = models.Platform.objects.all()
            languages = models.Language.objects.all()
            location_city = models.LocationCity.objects.all()
            location_country = models.LocationCountry.objects.all()
            location_private = models.LocationPrivate.objects.all()
            for i in search_engine:
                data["data"]["search_engine"].append([i.name])
            for i in platform:
                data["data"]["platform"].append([i.id,i.name])
            for i in languages:
                data["data"]["languages"].append([i.name,i.tag])
            for i in location_city:
                data["data"]["locations"]["location_city"].append([i.name,i.x,i.y])
            for i in location_country:
                data["data"]["locations"]["location_country"].append([i.name,i.x,i.y])
            for i in location_private:
                data["data"]["locations"]["location_private"].append([i.name,i.x,i.y])
            data["code"]=0
        else:
            data["code_"] = "Key Error"
    else:
        data["code_"] = "Eksik parametre"
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')

def deleteKeyword(request):
    uid = request.GET.get('uid', None)
    site_url = request.GET.get('site_url', None)
    new = models.Site(
            uid = uid,
                site_url = site_url,
    ).save()
    data = {
        'code':0,
        'code_':'OK',
    }
    dump = json.dumps(data)
    return HttpResponse(dump, content_type='application/json')
































