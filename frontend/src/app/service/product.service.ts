import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Category } from '../site-layout/interface/category';
import {environment} from '../../environments/environment'
import { color } from '../site-layout/interface/color';
import { size } from '../site-layout/interface/size';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private httpclient:HttpClient) { }
  getcategory(){
    return this.httpclient.get<Category>(`${environment.API_URL}/category/read.php`)
  }
  get_subcategory(){
    return this.httpclient.get<Category>(`${environment.API_URL}/subcategory/read.php`)
  }
  getcategory_id(id:number){
    return this.httpclient.get<Category>(`${environment.API_URL}/subcategory/read_single.php/?id=`+id)
  }
  getcolor(){
    return this.httpclient.get<color>(`${environment.API_URL}/color/read.php`)
  }
  getsize(){
    return this.httpclient.get<size>(`${environment.API_URL}/size/read.php`)
  }
  getprice(){
    return this.httpclient.get<size>(`${environment.API_URL}/product/getprice.php`)
  }

}
