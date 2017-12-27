<!-- Меню кабинета -->
<membernav>
<ul class="subnav__list">
    <li class="subnav__item{_main:id==parent.part_id} trans" each="{items}" onclick="{selectPart}">
        <a href="{link}">{title}</a>
    </li>
</ul>
<script>
    this.mixin(MyMixin.membernav);
</script>
</membernav>


<!-- Мероприятия -->
<myevents>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft">Мои мероприятия
<span style="float:right;cursor:pointer;" title="Добавить мероприятие" onclick="{Add}"><i class="fa fa-plus"></i></span>
<span style="float:right;margin-right:30px;"><a href="/instuction-events.html" style="color:white;text-transform:none;text-decoration:underline" target="_blank">как добавить мероприятие</a></span>

</h3>
<p class="text-17" style="margin-top:10px;">Вы можете добавить {limits.events} мероприятий </p> 
<div style="padding:20px;">
    <ul class="content-list">
        <li class="content-item animated-in-zoomIn is-hidden visible animated zoomIn" each="{events}">
            <div class="img-wrap">
                <img src="/uploads/news/{big}" alt="">
            </div>
            <div class="content-item__block">
                <a href="#" class="title-sm">{title}</a>
                <div class="data-block">
                    <span class="data"><i class="fa fa-calendar"></i> {date}</span>
                    <span class="data">{price} грн.</span>
                     <p class="data">{type}</p>
                </div>
                <div class="tags-block">
                    {location}
                </div>
                <!--
                <button class="sign-up-button button hvr-rectangle-out button__pink-blue trans" onclick="{parent.Remove}">удалить</button>
                -->
                <button class="sign-up-button button hvr-rectangle-out button__pink-blue trans" onclick="{parent.Edit}"> редактировать</button>
            </div>
        </li>
    </ul>
</div>

<script>
    this.url="/api/my_events";
    this.editmod="editevent";
    this.mixin(MyMixin.myevents);
</script>
</myevents>

<!--Вакансии -->
<myvacancies>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft"><span>Мои вакансии</span>
<span style="float:right;cursor:pointer;" title="Создать вакансию" onclick="{Add}"><i class="fa fa-plus"></i></span>
</h3>
<p class="text-17" style="margin-top:10px;">Ваш лимит {limits.works} обычных и {limits.hotworks} горящих вакансий</p> 
<div style="padding:20px;">
    <ul class="content-list">
        <li class="content-item animated-in-zoomIn is-hidden visible animated zoomIn" each="{events}">
            <div class="img-wrap">
                <img src="/uploads/news/{big}" alt="">
            </div>
            <div class="content-item__block">
                <a href="/vacancies/event-{id}.html" target="_blank" class="title-sm"><span class="hot" if="{hot}" title="горящая"><i class="fa fa-star"></i></span> {title}</a>
                <div class="data-block">
                    <span class="data">{short}</span>
                </div>
                <div class="tags-block">
                    <p>зарплата {price} грн.</p>
                </div>
                <button class="sign-up-button button hvr-rectangle-out button__pink-blue trans">удалить</button>
                <button class="sign-up-button button hvr-rectangle-out button__pink-blue trans"  onclick="{parent.Edit}"> редактировать</button>
            </div>
        </li>
    </ul>
</div>
<script>
    this.url="/api/my_vac";
    this.editmod="editvac";
    this.mixin(MyMixin.myevents);
</script>
</myvacancies>


<!-- Профиль -->
<myprofile>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft">Мой профиль</h3>
<div style="padding:20px;">

<div class="entry-form__input-wrap">
    <label>Логотип (140х140)</label>
     <img src="/uploads/logo/{event.big}" ref="big" class="upload" data-json="path:uploads/logo,crop:0,rx:140,ry:140,prop:0" style="width:100px;height:auto;min-height:50px;">
     <p>Кликните на рамке,чтобы загрузить изображение логтипа</p>
 </div>

 <div class="entry-form__input-wrap">
    <label>Картинка для страницы работодателя (768х200)</label>
     <img src="/uploads/logo/{event.head}" ref="head" class="upload" data-json="path:uploads/logo,crop:0,rx:768,ry:200,prop:0" style="width:700px;height:auto;min-height:50px;">
     <p>Кликните на рамке,чтобы загрузить изображение</p>
 </div>

<form class="entry-form" ref="form">
    <div class="entry-form__input-wrap">
        <label>Название салона(сети)</label>
        <input type="text" class="entry-form__input" placeholder="Название" name="title" value="{event.title}" onchange="{setInp}">
    </div>
     <div class="entry-form__input-wrap">
        <label>Телефоны через запятую</label>
        <input type="text" class="entry-form__input" placeholder="+380ХХХХХХХХХ" name="phone" value="{event.phone}" onchange="{setInp}">
    </div>
     <div class="entry-form__input-wrap">
        <label>Адрес</label>
        <input type="text" class="entry-form__input" placeholder="г. Киев, ул.Печерская 5/1" name="addr" value="{event.addr}" onchange="{setInp}">
    </div>

    <div class="entry-form__input-wrap">
        <label>Сайт</label>
        <input type="text" class="entry-form__input" placeholder="www.my-site.com" name="site" value="{event.site}" onchange="{setInp}">
    </div>

     <div class="entry-form__input-wrap">
        <label>Email для контактов</label>
        <input type="text" class="entry-form__input" placeholder="office@salon.com" name="email" value="{event.email}" onchange="{setInp}">
    </div>

    

    <div class="entry-form__input-wrap">
        <label>Краткое описание</label>
        <textarea name="descr" class="entry-form__input" onchange="{setInp}" style="min-height:200px;">{event.descr}</textarea>
    </div>
</form>
<p>
        <button class="button hvr-rectangle-out button__pink-transparent trans" type="button" onclick="{Save}">Сохранить профиль</button>
    </p>
</div>
<style type="text/css">
    img.upload{
        display: block;
        width: 400px;
        height: auto;
        min-height: 200px;
        border: dashed 1px #3387C3;
    }
    label{font-weight: normal; padding: 5px 0px 10px 0px;}
    .entry-form__input-wrap{margin-bottom: 10px;display: block;height: auto}
    .entry-form__input-wrap input{height: 42px;}
    .inline{display:inline-block; min-height: 42px;height: auto;}
    .w200{width: 200px;}
    .w300{width: 300px;}
    .w400{width: 400px;}
    .w600{width: 600px;}
    a{cursor: pointer;}
    .events-list li{
        border-top:solid 1px #d0d0d0;
        margin-top: 30px;
        padding: 10px 0;
    }
    .float-right{float:right;}
</style>
<script>
    this.url="/api/save_profile";
    this.onload="/api/profile";
    this.mixin(MyMixin.editevent);    
</script>
</myprofile>

<billing>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft">Мои заказы</h3>
<ul class="content-list">
 <li class="content-item animated-in-zoomIn is-hidden visible animated zoomIn" each="{items}">
         <div class="content-item__block" >
            <div class="room-data-wrap"> 
                <div class="room-title-block">
                    <a href="article.html" class="title-sm">{title}</a>
                    <span class="data">Оплачен: {date_payd}</span>
                </div>
                <div class="data-block billing-data-block">
                    <span class="data main-data">Сумма: {amount} грн.</span>                   
                </div>
            </div>     
        </div>
    </li>
    </ul>    
    <script>
    this.mixin(MyMixin.billing);    
    </script>
</billing>


<!-- Пакеты -->
<mypakages>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft">Пакеты</h3>

<ul class="content-list">

    <li class="content-item animated-in-zoomIn is-hidden visible animated zoomIn" each="{items}">
        
        <div class="content-item__block" >
					<div class="room-data-wrap">
						<div class="room-title-block">
							<a href="article.html" class="title-sm">{title}</a>
							<div class="tags-block">
									<p>{short}</p>
							</div>   
						</div>
						<div class="data-block room-data-block">
                <span class="data main-data">Цена: {price} грн.</span>
                <span class="data price-data" if="{oldprice!='0'}">Старая цена {oldprice} грн.</span>
                <span class="data econ-data" if="{economy!='0'}">Экономия {economy} грн.</span>
                <span class="data el-data" if="{itemprice!='0'}"> {itemprice} грн/шт.</span>
            </div>						
						<button class="sign-up-button button hvr-rectangle-out button__pink-blue trans" onclick="{Buy}">добавить в корзину</button>
					</div>				    
				</div>
    </li>

</ul>

<div id="modal-pay" class="modal" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h5 class="modal-title">Покупка пакета</h5>
            </div>
            <div class="modal-body">
                    <h5>{item.title}</h5>
                    <p>Стоимость {item.price} грн</p>
                    <p>Покупая пакет, Вы получаете возможность добавить {item.events} мероприятий</p>
            </div>
            <div class="modal-footer">
                <div id="pay-form"></div>
                <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Отмена</button>
                <button type="button" class="btn btn-primary pull-right" onclick="{Pay}">Перейти к оплате</button>
            </div>
        </div>
    </div>
</div>

<script>
 this.mixin(MyMixin.packages);
</script>
</mypakages>


<!-- Редактор мероприятия -->
<editevent>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft"><span>Редактирование мероприятия</span></h3>
 
<span style="float:right;cursor:pointer;" title="Назад" onclick="{Back}"><i class="fa fa-close"></i></span>
</h3>
<div style="padding:20px;">
 <div class="entry-form__input-wrap">
 <label>Изображение (768х340)</label>
     <img src="/uploads/news/{event.big}" ref="big" class="upload" data-json="path:uploads/news,crop:0,rx:768,ry:340,prop:0">
     <p>Кликните на рамке,чтобы загрузить изображение</p>
 </div>
<form class="entry-form" ref="form">
    <div class="entry-form__input-wrap">
        <label>Название мероприятия</label>
        <input type="text" class="entry-form__input" placeholder="Название мероприятия" name="title" value="{event.title}" onchange="{setInp}">
    </div>
    <div class="entry-form__input-wrap">
        <label>Ссылка для кнопки "Записаться"</label>
        <input type="text" class="entry-form__input" placeholder="http://" name="link" value="{event.link}" onchange="{setInp}">
    </div>
    <div class="entry-form__input-wrap">
        <div class="w200 inline">
            <label>дата проведения</label>
            <input type="text" class="entry-form__input" placeholder="ДД.ММ.ГГГГ" name="date"  value="{event.date}" focusout="{setInp}">
        </div>
        <div class="w200  inline">
            <label>время проведения</label>
            <input type="text" class="entry-form__input" placeholder="ЧЧ:ММ" name="time"  value="{event.time}" focusout="{setInp}">
        </div>
        <div class="w300  inline">
            <label>период проведения</label>
            <input type="text" class="entry-form__input" placeholder="29-30 января" name="period"  value="{event.period}" onchange="{setInp}">
        </div>
        <div class="w200  inline">
            <label>Цена, грн</label>
            <input type="text" class="entry-form__input" placeholder=" " name="price"  value="{event.price}" onchange="{setInp}">
        </div>
    </div>
    <div class="entry-form__input-wrap">
        <label>Место проведения</label>
        <input type="text" class="entry-form__input" placeholder="Место проведения" name="location"  value="{event.location}" onchange="{setInp}">
    </div>
    <div class="entry-form__input-wrap">
        <label>Организатор</label>
        <input type="text" class="entry-form__input" placeholder="Организатор" name="organizer"  value="{event.organizer}" onchange="{setInp}">
    </div>
    <div class="entry-form__input-wrap w400">
        <label>Вид мероприятия</label>
        <select name="cat" class="entry-form__input" onchange="{setInp}">
            <option value="0">Выберите вид мероприятия</option>
            <option value="{id}" each="{title,id in opts.rubrics}" selected="{id==parent.event.cat}">{title}</option>
            
        </select>
    </div>
    <div class="entry-form__input-wrap">
        <label>Краткое описание</label>
        <textarea name="short" class="entry-form__input" onchange="{setInp}">{event.short}</textarea>
    </div>
</form>

     <div class="entry-form__input-wrap">
        <label>Полное описание</label>
        <div class="entry-form__input" focusout="{setCont}"  ref="descr" style="min-height:200px;height:auto; overflow-y:auto;" contenteditable="true"></div>
       
    </div>
   

<div style="border-top:solid 2px #f186a3;padding-top:20px;">
    <h3 class="pink">Этапы мероприятия <a onclick="{Add}">добавить этап</a></h3>
    <ul class="content-list events-list">
        <li each="{e,i in event.events}">
            <div class="entry-form__input-wrap">
                <label>Название этапа</label> <a class="pink" onclick="{parent.Remove}">Удалить этап</a>
                <input type="text" class="entry-form__input" placeholder="Название" name="title" value="{e.title}" onchange="{parent.setField}">
            </div>
            <div class="entry-form__input-wrap">
                <div class="w200 inline">
                    <label>дата и время</label>
                    <input type="text" class="entry-form__input" placeholder="ДД.ММ.ГГГГ ЧЧ:mm" name="datetime" value="{e.datetime}" focusout="{parent.setField}">
                </div>
                
                <div class="w600  inline">
                    <label>Имя фамилия. Должность компания (если нужно)</label>
                    <input type="text" class="entry-form__input"  name="person" value="{e.person}" onchange="{parent.setField}">
                </div>
             </div>   
               
            </li>
        </ul>
    </div>
    <p class="pink">{errors}</p>
    <p>
        <button class="button hvr-rectangle-out button__pink-transparent trans" type="button" onclick="{Save}">Сохранить мероприятие</button>
    </p>
</div>
<style type="text/css">
    .modal-backdrop{z-index:0;}
    img.upload{
        display: block;
        width: 400px;
        height: auto;
        min-height: 200px;
        border: dashed 1px #3387C3;
    }
    label{font-weight: normal; padding: 5px 0px 10px 0px;}
    .entry-form__input-wrap{margin-bottom: 10px;display: block;height: auto}
    .entry-form__input-wrap input{height: 42px;}
    .inline{display:inline-block; min-height: 42px;height: auto;}
    .w200{width: 200px;}
    .w300{width: 300px;}
    .w400{width: 400px;}
    .w600{width: 600px;}
    a{cursor: pointer;}
    .events-list li{
        border-top:solid 1px #d0d0d0;
        margin-top: 30px;
        padding: 10px 0;
    }
    .float-right{float:right;}
</style>
<script>
    this.url="/api/save_event";
    this.backmod="myevents";
    this.mixin(MyMixin.editevent);
</script>
</editevent>



<!-- Редактор вакансии -->
<editvac>
<h3 class="content-title content-title__pink content-title__left animated-in-slideInLeft"><span>Редактирование вакансии</span>
<span style="float:right;cursor:pointer;" title="Назад" onclick="{Back}"><i class="fa fa-close"></i></span>
</h3>
<div style="padding:20px;">
 <div class="entry-form__input-wrap">
 <label>Изображение для страницы вакансии (768х340)</label>
     <img src="/uploads/news/{event.big}" ref="big" class="upload" data-json="path:uploads/news,crop:0,rx:768,ry:340,prop:0">
     <p>Кликните на рамке,чтобы загрузить изображение</p>
 </div>
<form class="entry-form" ref="form">
    <div class="entry-form__input-wrap">
        <label>Название должности</label>
        <input type="text" class="entry-form__input" placeholder="Название мероприятия" name="title" value="{event.title}" onchange="{setInp}">
    </div>
    <div class="entry-form__input-wrap">
        <label>зарплата, грн</label>
        <input type="text" class="entry-form__input" placeholder=" " name="price"  value="{event.price}" onchange="{setInp}">
      
    </div>

    <div class="entry-form__input-wrap w400">
        <label>Город</label>
        <select name="city" class="entry-form__input" onchange="{setInp}">
            <option value="0">Выберите город</option>
            <option value="{id}" each="{opts.cities}" selected="{id==parent.event.city}">{title}</option>
        </select>
    </div>
    <div class="entry-form__input-wrap w400">
        <label>Специализация</label>
        <select name="spec" class="entry-form__input" onchange="{setInp}">
            <option value="0">Выберите специализацию</option>
            <option value="{id}" each="{opts.dirs}" selected="{id==parent.event.spec}">{title}</option>
        </select>
    </div>

    <div class="entry-form__input-wrap w400">
        <label>Раздел</label>
        <select name="cat" class="entry-form__input" onchange="{setInp}">
            <option value="0">Выберите раздел</option>
            <option value="{id}" each="{title,id in opts.rubrics}" selected="{id==parent.event.cat}">{title}</option>
        </select>
    </div>

    <div class="entry-form__input-wrap w400">
        <label>Тип вакансии</label>
        <select name="tag" class="entry-form__input" onchange="{setInp}">
            <option value="0">Обычная</option>
            <option value="1" selected="{event.hot}">Горящая</option>
        </select>
    </div>

    <div class="entry-form__input-wrap">
        <label>Краткое описание</label>
        <textarea name="short" class="entry-form__input" onchange="{setInp}">{event.short}</textarea>
    </div>
</form>

     <div class="entry-form__input-wrap">
        <label>Полное описание</label>
        <div class="entry-form__input" focusout="{setCont}" contenteditable="true" ref="descr" style="min-height:200px;height:auto; overflow-y:auto;"></div>
    </div>
   


    <p class="pink">{errors}</p>
    <p>
        <button class="button hvr-rectangle-out button__pink-transparent trans" type="button" onclick="{Save}">Сохранить вакансию</button>
    </p>
</div>
<style type="text/css">
    img.upload{
        display: block;
        width: 400px;
        height: auto;
        min-height: 200px;
        border: dashed 1px #3387C3;
    }
    label{font-weight: normal; padding: 5px 0px 10px 0px;}
    .entry-form__input-wrap{margin-bottom: 10px;display: block;height: auto}
    .entry-form__input-wrap input{height: 42px;}
    .inline{display:inline-block; min-height: 42px;height: auto;}
    .w200{width: 200px;}
    .w300{width: 300px;}
    .w400{width: 400px;}
    .w600{width: 600px;}
    a{cursor: pointer;}
    .events-list li{
        border-top:solid 1px #d0d0d0;
        margin-top: 30px;
        padding: 10px 0;
    }
    .float-right{float:right;}
</style>
<script>
    this.url="/api/save_vac";
    this.backmod="myvacancies";
    this.mixin(MyMixin.editevent);
</script>
</editvac>

